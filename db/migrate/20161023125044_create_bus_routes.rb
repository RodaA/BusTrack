class CreateBusRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_routes do |t|
      t.integer :busID
      t.integer :routeID

      t.timestamps
    end
  end
end
