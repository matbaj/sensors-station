class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.integer :station_id
      t.string :name
      t.string :key

      t.timestamps
    end
  end
end
