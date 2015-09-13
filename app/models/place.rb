class Place < ActiveRecord::Base
  belongs_to :user

  default_scope -> { order('created_at DESC') }

  validates :place,  	    presence: true,   length: { maximum: 50 }
  validates :description, 	presence: true
  validates :address,  		presence: true
  validates :user_id, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end