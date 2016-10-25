class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer :routeID
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
