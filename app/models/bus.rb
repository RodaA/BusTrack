class Bus < ApplicationRecord
  has_many :locations
  has_many :drivers
  has_one :route 
  
	validates  :busID, :phoneNum, presence: true
	validates :busID, uniqueness: true 
end