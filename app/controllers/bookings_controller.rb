class BookingsController < ApplicationController
  def index
    # Edit the index method on the bookings_controller to accept a param of filter if the param is not nil, 
    # and to return the correct bookings.
    if params[:filter] == nil
      bookings = Booking.all
    else
      bookings = Booking.where(status: Booking.statuses[params[:filter]])
    end

    # bookings.each { |n| puts "total: #{n.price_total} | priceRemaining: #{n.price_remaining} | price_paid: #{n.price_paid}" }

    render json: bookings, status: 200
  end
end
