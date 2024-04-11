class CreateDetailPaiements < ActiveRecord::Migration[7.1]
  def change
    create_table :detail_paiements do |t|
      t.string :frais_name
      t.float :montant
      t.date :end_date
      t.text :description
      t.references :year, foreign_key: true

      t.timestamps
    end
  end
end
