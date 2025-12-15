class CreateBatches < ActiveRecord::Migration[8.1]
  def change
    create_table :batches do |t|
      t.string :lot_number
      t.date :expiry
      t.integer :status
      t.references :shipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
