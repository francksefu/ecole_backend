class CreateClassrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :detail
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
