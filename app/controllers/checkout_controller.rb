class CheckoutController < ApplicationController
  def create
    product = Listing.find(params[:listing_id])
    booking = Booking.find(params[:id])
    duration = (booking.end_date - booking.start_date).to_i + 1
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        name: product.name,
        amount: product.price * 100,
        currency: "gbp",
        quantity: duration
      }],
      mode: 'payment',
      success_url: bookings_url,
      cancel_url: listings_url
    })
    respond_to do |format|
      format.js
    end
  end
end
