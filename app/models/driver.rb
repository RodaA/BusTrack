class Driver < ApplicationRecord
  #belongs_to :bus
  
	validates  :driverID, :fName, :lName, :phoneNum, presence: true
	validates :driverID, uniqueness: true 
  
end
