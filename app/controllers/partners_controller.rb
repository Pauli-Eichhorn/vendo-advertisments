class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.user = current_user
    if @partner.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy!
    redirect_to partners_path
  end

  private

  def partner_params
    params.require(:partner).permit(:street_name_and_number, :postal_code, :city, :country, :message, :photo1, :photo2)
  end
end
