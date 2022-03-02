class Partner < ApplicationRecord
  belongs_to :user
  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3
  validates :street_name_and_number, presence: true
  validates :message, presence: true
  validates :postal_code, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
