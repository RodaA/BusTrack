class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :LocationID
      t.float :coordinates_LA
      t.float :coordinates_LO
      t.timestamp :time
      t.integer :busID

      t.timestamps
    end
  end
end
