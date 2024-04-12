class CreateInformation < ActiveRecord::Migration[7.1]
  def change
    create_table :information do |t|
      t.string :source
      t.string :distination
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
