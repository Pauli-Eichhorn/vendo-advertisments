class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validate :not_past_start_date

  def not_past_start_date
    if self.start_date < Date.today
      errors.add(:date, 'not in past')
    end
  end
  validate :not_past_end_date

  def not_past_end_date
    if self.end_date < Date.today
      errors.add(:date, 'not in past')
    end
  end
end
