class Comment < ActiveRecord::Base
  validates :place_id, presence: true
  validates :score, presence: true
  validates :comment, presence: true
  validates :user, presence: true
end
