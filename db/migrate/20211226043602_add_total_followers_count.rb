class AddTotalFollowersCount < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :total_followers_count, :integer
    add_column :accounts, :total_following_count, :integer
  end
end
