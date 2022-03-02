class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3
  has_one_attached :photo4
  has_one_attached :photo5
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :photo1, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :name, presence: true
end
