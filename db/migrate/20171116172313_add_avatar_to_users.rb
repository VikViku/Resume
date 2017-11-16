class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
	add_column :users, :avatar_uid, :string
	add_column :users, :avatar_name, :string
  end
end
