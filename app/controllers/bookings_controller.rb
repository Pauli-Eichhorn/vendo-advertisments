class BookingsController < ApplicationController

  def index
    # @bookings = Booking.all
    # @review = Review.new
    @host = current_user.listings.any?
    @bookings = current_user.bookings
    if @host
      @my_requests = current_user.listings
      @my_bookings = Booking.where(listing_id: @my_requests.pluck(:id))
    end
  end

  def new
    @bookings = Booking.new
    @listings = Listing.find(params[:listing_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @listing = Listing.find(params[:listing_id])
    @booking.user = current_user
    @booking.listing= @listing
    if @booking.save
      redirect_to listing_bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
  params.require(:booking).permit(:start_date, :end_date)
  end

end
