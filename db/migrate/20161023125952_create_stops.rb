class CreateStops < ActiveRecord::Migration[5.0]
  def change
    create_table :stops do |t|
      t.integer :stopID
      t.string :stopName
      t.string :coordinates_LA
      t.string :coordinates_LO

      t.timestamps
    end
  end
end
