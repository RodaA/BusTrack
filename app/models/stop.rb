class Stop < ApplicationRecord
  #belongs_to :route
  
	validates  :stopID,:stopName, :coordinates_LA, :coordinates_LO, presence: true
	validates :stopID, :stopName, :coordinates_LA, :coordinates_LO, uniqueness: true 
  

  
end
