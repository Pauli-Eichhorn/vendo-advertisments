class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
    @host = current_user.listings.any?
    @bookings = current_user.bookings
    if @host
      @my_requests = current_user.listings
      @my_bookings = Booking.where(listing_id: @my_requests.pluck(:id))
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def new
    @booking = Booking.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @listing = Listing.find(params[:listing_id])
    # @user = User.find(params[:user_id])
    @booking.user = current_user
    @booking.listing = @listing
    if @booking.save
      BookingMailer.with(booking: @booking).new_booking_email.deliver_later
      redirect_to listings_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"
    @booking.save
    redirect_to bookings_path(anchor: "booking-#{@booking.id}")
  end

  def reject
    @booking = Booking.find(params[:booking_id])
    @booking.status = "rejected"
    @booking.save
    redirect_to bookings_path(anchor: "booking-#{@booking.id}")
  end

  private

  def booking_params
  params.require(:booking).permit(:start_date, :end_date)
  end
end
