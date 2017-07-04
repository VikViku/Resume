class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :university
      t.string :degree
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
