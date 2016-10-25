class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.integer :driverID
      t.string :fName
      t.string :lName
      t.string :phoneNum
      

      t.timestamps
    end
  end
end
