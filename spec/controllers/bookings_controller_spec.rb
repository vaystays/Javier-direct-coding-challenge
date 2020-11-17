require 'rails_helper'
RSpec.describe BookingsController do
  before(:all) do
    Booking.destroy_all
    Rails.application.load_seed

    # Update the price remaining after we load the bookings.
    Booking.all.each { |b| 
      b.update_price_remaining 
      b.update_status 
    }

  end

  describe 'GET index' do
    it 'returns all bookings if there is no filter' do
      get :index
      expect(JSON.parse(response.body).count).to eq(Booking.count)
    end

    it 'returns all bookings with status paid' do
      get :index, params: { filter: 'paid_in_full' }
      
      # Booking.where(status: 'paid_in_full').each{|n| 
      #   puts "price_total: #{n.price_total}" 
      #   puts "price_paid: #{n.price_paid}"
      #   puts "price_remaining: #{n.price_remaining}\n\n"
      # }

      expect(JSON.parse(response.body).count).to eq(Booking.where(status: 'paid_in_full').count)
    end

    it 'returns all bookings with status unpaid' do
      get :index, params: { filter: 'unpaid' }
      # Booking.where(status: 'unpaid').each{|n| 
      #   puts "price_total: #{n.price_total}" 
      #   puts "price_paid: #{n.price_paid}"
      #   puts "price_remaining: #{n.price_remaining}\n\n"
      # }
      expect(JSON.parse(response.body).count).to eq(Booking.where(status: 'unpaid').count)
    end

    it 'returns all bookings with status partially_paid' do
      get :index, params: { filter: 'partially_paid' }
      # Booking.where(status: 'partially_paid').each{|n| 
      #   puts "price_total: #{n.price_total}" 
      #   puts "price_paid: #{n.price_paid}"
      #   puts "price_remaining: #{n.price_remaining}\n\n"
      # }
      expect(JSON.parse(response.body).count).to eq(Booking.where(status: 'partially_paid').count)
    end
  end
end