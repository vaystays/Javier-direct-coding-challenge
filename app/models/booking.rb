class Booking < ApplicationRecord
  #Booking(
  #   id: integer, 
  #   start_date: date, 
  #   end_date: date, 
  #   is_paid: boolean, 
  #   price_total: decimal, 
  #   price_remaining: decimal, 
  #   price_paid: decimal, 
  #   status: integer, 
  #   created_at: datetime, 
  #   updated_at: datetime
  # )
  enum status: %w[paid_in_full unpaid partially_paid]

  def update_status
  end

  def update_price_remaining
  end
end
