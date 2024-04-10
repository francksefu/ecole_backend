class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.float :credit
      t.text :description

      t.timestamps
    end
  end
end
