class BusDriver < ApplicationRecord
  

	validates   :busID, :driverID, :shift, presence: true

end
