class Place < ActiveRecord::Base
  validates :place,  	    presence: true,   length: { maximum: 50 }
  validates :description, 	presence: true
  validates :adress,  		presence: true
end
