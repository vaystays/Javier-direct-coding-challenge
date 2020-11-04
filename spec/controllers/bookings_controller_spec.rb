require 'rails_helper'
RSpec.describe BookingsController do
  describe 'GET index' do
    Booking.create(check_in: Date.today, check_out: Date.today + 10, price_total: 1500, price_paid: 1500)
    Booking.create(check_in: Date.today, check_out: Date.today + 10, price_total: 1500, price_paid: 1000)
    Booking.create(check_in: Date.today, check_out: Date.today + 10, price_total: 157.50, price_paid: 150)
    Booking.create(check_in: Date.today, check_out: Date.today + 10, price_total: 1500, price_paid: 1500)
    it 'returns all bookings if there is no filter' do
      get :index
      expect(JSON.parse(response.body).count).to eq(Booking.count) 
    end

    it 'returns all bookings with status paid' do
      get :index, params: { filter: 'paid_in_full' }
      expect(JSON.parse(response.body).count).to eq(Booking.where(status: 'paid_in_full'))
    end
  end
end