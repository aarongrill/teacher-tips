class AddUserIdAndRemoveUsername < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :user_id, :integer
    remove_column :tweets, :username, :string
  end
end
