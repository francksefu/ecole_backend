class CreateObservationDisciplinaries < ActiveRecord::Migration[7.1]
  def change
    create_table :observation_disciplinaries do |t|
      t.date :data
      t.text :observation

      t.timestamps
    end
  end
end
