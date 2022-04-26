class BookingMailer < ApplicationMailer
   def new_booking_email
    @booking = params[:booking]
    # @user = User.find(params[:id])

    mail(to: "carl.schierstaedt@gmail.com", subject: "You've got a new booking!")
  end
end
