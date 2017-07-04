class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :workplace
      t.string :occupation
      t.text :desc
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
