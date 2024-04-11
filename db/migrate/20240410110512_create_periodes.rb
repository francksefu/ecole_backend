class CreatePeriodes < ActiveRecord::Migration[7.1]
  def change
    create_table :periodes do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :year, foreign_key: true

      t.timestamps
    end
  end
end
