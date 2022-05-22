class RegistrationsController < Devise::RegistrationsController
    protected
  
    def after_sign_up_path_for(resource)
        dashboard_path
    end
    
    def after_update_path_for(resource)
        profile_path(@account.username)       
    end

end