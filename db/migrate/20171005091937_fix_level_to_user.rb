class FixLevelToUser < ActiveRecord::Migration[5.1]
  def change
	change_column :languages, :level, :string
  end
end
