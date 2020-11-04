class BookingsController < ApplicationController
  def index
    bookings = Booking.where(status: params[:filter])

    render json: bookings, status: 200
  end
end
