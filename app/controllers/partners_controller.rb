class PartnersController < ApplicationController
  def index
    @partners = Partner.all
    # # @bookings = Booking.all
    # @host = current_user.listings.any?
    # @bookings = current_user.bookings
    # if @host
    #   @my_requests = current_user.listings
    #   @my_bookings = Booking.where(listing_id: @my_requests.pluck(:id))
    # end
  end

  def new
    @partner = Partner.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @partner = Partner.new(partner_params)
    @partner.user = @user
    if @partner.save
      redirect_to partners_path
    else
      render :new
    end
  end

  private

  def partner_params
    params.require(:partner).permit(:first_name, :last_name, :address, :city, :country, :zip, :message)
  end
end
