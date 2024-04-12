class CreateEvaluates < ActiveRecord::Migration[7.1]
  def change
    create_table :evaluates do |t|
      t.float :point
      t.references :date_evaluation, null: false, foreign_key: true
      t.references :promotion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
