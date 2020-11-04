class BookingsController < ApplicationController
  def index
    bookings = Booking.all

    render json: bookings, status: 200
  end
end
