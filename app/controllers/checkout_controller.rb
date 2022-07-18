class CheckoutController < ApplicationController
  def create
    product = Listing.find(params[:listing_id])
    booking = Booking.find(params[:id])
    duration = (booking.end_date - booking.start_date).to_i + 1
    @session = Stripe::Checkout::Session.create({
      client_reference_id: booking.id,
      customer: current_user.stripe_customer_id,
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
    # booking.update(checkout_session_id: session.id)
  end
end
