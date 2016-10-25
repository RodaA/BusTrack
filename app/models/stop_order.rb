class StopOrder < ApplicationRecord
  
	validates :routeID, :stopID, :order, presence: true
  

end
