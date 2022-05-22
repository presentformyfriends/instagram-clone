module AccountsHelper

    def profile_picture account, width = 50
        image_path = account.image.present? ? account.image.url : "placeholder-profile.png"
        image_tag(image_path, width: width, aria: { label: 'Profile Thumbnail' }, class: "img-circle m-r-5")
    end

    def can_edit_profile? profile_id
        account_signed_in? && current_account.id == profile_id
    end

    def is_active?(link_path)
        if current_page?(link_path)
            "active"
        else
            ""
        end
    end
end