# README

This repository is a ruby coding challenge for Direct applicants.

System requirements:
* Ruby 2.5.1
* Rails 5.1.7
* PostgreSQL
* Bundler

Instructions:
1. Clone this repository
2. Run `bundle install`
3. Run `rails db:create`
4. Run `rails db:migrate`
5. Run `rails db:seed`

CHOOSE 4 out of these 6 test questions to complete. After completing send your answers in an email to ryan@getdirect.io

  1. Write a class method in app/models/booking.rb that takes two parameters, a start date and an end date. This method should return all bookings that check in within that date range. 
  
  2. Write an instance method in app/models/booking.rb that returns a json containing three fields: `price_total` `price_paid` and `price_remaining`. The value of each field should be the string representation of the corresponding attribute of Booking, formatted as currency("$99.99"). Make sure the values are prefixed with a dollar sign and rounded to two decimal places. 

  3. Write an instance method that updates a booking's `price_remaining` attribute to equal the difference between the price_total and price_paid attributes.

  4. Write an instance method that will update the status of the booking to 'paid_in_full', 'unpaid' or 'partially_paid' depending on the `price_remaining` attribute. If `price_remaining` is equal to `price_total`, the booking is paid in full. If `price_paid` is equal to zero, the booking is unpaid. Else, the booking has been partially paid. 

  5. Write a class method, that takes one argument, that returns all bookings that have a status of `paid_in_full`, `partially_paid` or `unpaid` based on the argument. 
