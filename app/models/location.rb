class Location < ApplicationRecord
  #belongs_to :bus
  
  
	validates  :LocationID, :coordinates_LA, :coordinates_LO, :time, :busID, presence: true
	validates :busID, :LocationID, uniqueness: true 

end
