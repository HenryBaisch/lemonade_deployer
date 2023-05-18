class Post < ApplicationRecord
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode
  belongs_to :user
end
