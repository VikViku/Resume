class AddStartedAtToEducations < ActiveRecord::Migration[5.1]
  def change
  	add_column :educations, :started_at, :datetime
  end
end
