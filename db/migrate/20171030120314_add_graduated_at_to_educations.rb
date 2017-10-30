class AddGraduatedAtToEducations < ActiveRecord::Migration[5.1]
  def change
  	add_column :educations, :graduated_at, :date
  end
end
