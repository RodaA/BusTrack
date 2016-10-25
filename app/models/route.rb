class Route < ApplicationRecord
  has_many :stops
  #belongs_to :bus
  
	validates  :routeID, :name, :description, presence: true

	validates :routeID, uniqueness: true 
  

end
