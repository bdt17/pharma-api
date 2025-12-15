class CreateShipments < ActiveRecord::Migration[8.1]
  def change
    create_table :shipments do |t|
      t.string :tracking_number
      t.string :status
      t.string :driver_name
      t.float :current_temp

      t.timestamps
    end
  end
end
