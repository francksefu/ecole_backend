class CreateStudyDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :study_directors do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :phone

      t.timestamps
    end
  end
end
