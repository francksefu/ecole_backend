class CreatePaiements < ActiveRecord::Migration[7.1]
  def change
    create_table :paiements do |t|
      t.float :montant
      t.references :accountant, foreign_key: true
      t.references :detail_paiement_classroom, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
