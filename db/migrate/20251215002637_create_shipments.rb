class CreateShipments < ActiveRecord::Migration[8.1]
  def change
    create_table :shipments do |t|
      t.float :lat
      t.float :lng
      t.float :temp_celsius
      t.float :humidity
      t.string :status
      t.string :device_id

      t.timestamps
    end
  end
end
