class Place < ActiveRecord::Base
  belongs_to :user

  geocoded_by :address, :latitude => :latitude, :longitude => :longitude
  after_validation :geocode 

  default_scope -> { order('created_at DESC') }

  validates :place,  	    presence: true,   length: { maximum: 50 }
  validates :description, 	presence: true
  validates :address,  		presence: true
  validates :user_id, presence: true
end