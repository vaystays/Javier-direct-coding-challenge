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

  def update_price_remaining
    # self.price_remaining = self.price_total - self.price_paid
    # puts "price_total #{price_total}"
    # puts "price_paid #{price_paid}"
    puts "#{price_total - price_paid}"
    self.update_attribute(:price_remaining, price_total - price_paid)
  end

  def update_status
    if price_remaining == price_total
      puts "unpaid!!!!!!!!!!!!!!!!!!!"
      self.update_attribute(:status, Booking.statuses["unpaid"])
    elsif price_remaining == BigDecimal("0.0") 
      puts "Paid in full!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      self.update_attribute(:status, Booking.statuses["paid_in_full"])
    else 
      # status = status.partially_paid
      puts "Partially paid!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

      self.update_attribute(:status, Booking.statuses["partially_paid"])
    end
  end

  # 1. Write an instance method on the booking model that updates a booking's `price_remaining` attribute to equal
  # the difference between the price_total and price_paid attributes. 
  # 2. Write an instance method on the booking model that will update the status of the booking to 'paid_in_full', 
  # 'unpaid' or 'partially_paid' depending on the `price_remaining` attribute. If `price_remaining` is equal to 
  # `price_total`, the booking is paid in full. If `price_paid` is equal to zero, the booking is unpaid. Else, 
  # the booking has been partially paid. 

  # I wanted to clarify with you some of the logic on the code.
  # On step two I just want to make sure the logic is correct. On step one it says that the 'price_remaining'
  # should be the difference between price_total and price_paid. Let's say we have the price_total = 200, and price_paid = 0. In this case
  # the cost of the booking is 200, and the customer has paid 0, therefore the remaining amount to pay should be 200.

  # However, on step 2. it says that if the price_remaining is equal to price_total, then the booking is paid in full. If we go back to the 
  # numeric example from above price_remaining = 200, and price_total = 200. In the logic stated in the readme this would mean the 
  # customer already paid in full, but shouldn't it be that the customer still needs to pay 200. Which means taht this shoudl be marked as 'unpaid' instead
  # of 'fully_paid'? 

end
