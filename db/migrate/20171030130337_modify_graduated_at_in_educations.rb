class ModifyGraduatedAtInEducations < ActiveRecord::Migration[5.1]
  def change
  	change_column :educations, :graduated_at, :datetime
  end
end
