class BusRoute < ApplicationRecord
  
  
	validates  :busID, :routeID, presence: true
	validates :busID, uniqueness: true 
  
end
