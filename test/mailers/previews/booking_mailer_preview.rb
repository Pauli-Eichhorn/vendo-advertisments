# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview
  def new_booking_email
    # Set up a temporary order for the preview
    booking = Booking.new(start_date: "12.04.2023", end_date: "12.05.2024")

    BookingMailer.with(booking: booking).new_booking_email
  end
end
