class WebhooksController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  require 'json'

# Using Sinatra
  def create
    payload = request.body.read
    event = nil
    begin
      event = Stripe::Event.construct_from(
        JSON.parse(payload, symbolize_names: true)
      )
    rescue JSON::ParserError => e
      # Invalid payload
      status 400
      return
    end
    # Handle the event
    case event.type
      when 'checkout.session.completed'
        booking_id = event.data.object.client_reference_id
        booking = Booking.find_by(id: booking_id)
        booking.paid = true
        booking.save
    end
    render json: { state: "processed" }, status: :ok
  end
end
