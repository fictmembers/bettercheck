class Place < ActiveRecord::Base
  belongs_to :user

  default_scope -> { order('created_at DESC') }

  validates :place,  	    presence: true,   length: { maximum: 50 }
  validates :description, 	presence: true
  validates :adress,  		presence: true
  validates :user_id, presence: true
  validates :lat, presence: true
  validates :lon, presence: true
end