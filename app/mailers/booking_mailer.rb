class BookingMailer < ApplicationMailer
   def new_booking_email
    @booking = params[:booking]
    # @user = User.find(params[:id])

    mail(
      from: "info@vendo-adv.com",
      to: "info@vendo-adv.com",
      cc: "p.eichhorn@vendo-adv.com",
      subject: "You've got a new booking!"
    )
  end
end
