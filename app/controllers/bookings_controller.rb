class BookingsController < ApplicationController
  def index
    # Edit the index method on the bookings_controller to accept a param of filter if the param is not nil, and to return the correct bookings.
    bookings = Booking.all

    render json: bookings, status: 200
  end
end
