class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validate :not_past_start_date
  has_one_attached :photo
  has_one_attached :video

  def not_past_start_date
    if self.start_date < Date.today + 2
      errors.add(:date, 'please start the booking 10 days from todays date')
    end
  end

  validate :not_past_end_date

  def not_past_end_date
    if self.end_date < Date.today + 12
      errors.add(:date, 'bookings have to be at least a week long')
    end
  end

end
