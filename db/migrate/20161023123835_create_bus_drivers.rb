class CreateBusDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_drivers do |t|
      t.integer :busID
      t.integer :driverID
      t.string :shift

      t.timestamps
    end
  end
end
