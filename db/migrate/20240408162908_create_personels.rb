class CreatePersonels < ActiveRecord::Migration[7.1]
  def change
    create_table :personels do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :phone
      t.string :role
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
