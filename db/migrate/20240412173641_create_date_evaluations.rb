class CreateDateEvaluations < ActiveRecord::Migration[7.1]
  def change
    create_table :date_evaluations do |t|
      t.date :date
      t.float :maximum
      t.references :classroom_course, null: false, foreign_key: true
      t.references :periode, null: false, foreign_key: true
      t.boolean :is_remote

      t.timestamps
    end
  end
end
