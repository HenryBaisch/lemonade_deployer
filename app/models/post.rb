class Post < ApplicationRecord
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarked_by_users, through: :bookmarks, source: :user
end
