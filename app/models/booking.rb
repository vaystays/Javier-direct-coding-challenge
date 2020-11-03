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


## CHOOSE 4 out of these 6 test questions to complete. After completing send you answers in an email to ryan@getdirect.io

  # 1. Make a method on the booking model that will return all bookings that are in between a given range.
  
  # 2. Make a method that will return a json object that contains the `price_total` `price_paid` and `price_remaining` for the given booking.

  # 3. Make a method that will update a booking objects price remaining to the difference of the price_total and price_paid

  # 4. Make a method that will update the status of the booking to paid, unpaid or partial_paid depending on the price_remaining

  # 5. Make a method that will return all bookings that are paid_in_full, partially_paid or unpaid based on what parameters you give it
end
