class CreateGpsDevices < ActiveRecord::Migration[8.1]
  def change
    create_table :gps_devices do |t|
      t.string :imei
      t.string :name
      t.datetime :last_ping
      t.float :battery

      t.timestamps
    end
  end
end
