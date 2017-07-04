class AddColumntoTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :isOwner, :boolean, :default => false
  end
end
