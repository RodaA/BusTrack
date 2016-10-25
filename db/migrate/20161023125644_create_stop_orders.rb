class CreateStopOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :stop_orders do |t|
      t.integer :routeID
      t.integer :stopID
      t.integer :order

      t.timestamps
    end
  end
end
