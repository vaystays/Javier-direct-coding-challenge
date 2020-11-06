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
  # 1. Write an instance method on the booking model that updates a booking's `price_remaining` attribute to equal the difference between the price_total and price_paid attributes.
  # 2. Write an instance method on the booking model that will update the status of the booking to 'paid_in_full', 'unpaid' or 'partially_paid' depending on the `price_remaining` attribute. If `price_remaining` is equal to `price_total`, the booking is paid in full. If `price_paid` is equal to zero, the booking is unpaid. Else, the booking has been partially paid. 

end
