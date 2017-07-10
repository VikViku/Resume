class AddLevelToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :level, :integer, :default => 0
  end
end
