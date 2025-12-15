class CreateTempSensors < ActiveRecord::Migration[8.1]
  def change
    create_table :temp_sensors do |t|
      t.references :device, null: false, foreign_key: true
      t.float :temp_low
      t.float :temp_high
      t.boolean :alert_active

      t.timestamps
    end
  end
end
