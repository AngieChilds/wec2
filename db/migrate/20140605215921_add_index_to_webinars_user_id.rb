class AddIndexToWebinarsUserId < ActiveRecord::Migration
  def change
    add_column :webinars, :user_id, :integer
    add_index  :webinars, :user_id
  end
end
