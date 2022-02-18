class Partner < ApplicationRecord
  belongs_to :user
  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3
end
