# README

This repository is a ruby coding challenge for Direct applicants.
System requirements:
Ruby 2.5.1
Rails 5.1.7
PostgreSQL
Bundler

Instructions:
Clone this repository
Run `bundle`
Run `rails db:create`
Run `rails db:migrate`
Run `rails db:seed`

CHOOSE 4 out of these 6 test questions to complete. After completing send you answers in an email to ryan@getdirect.io

  1. Make a method on the booking model that will return all bookings that are in between a given range.
  
  2. Make a method that will return a json object that contains the `price_total` `price_paid` and `price_remaining` for the given booking.

  3. Make a method that will update a booking objects price remaining to the difference of the price_total and price_paid

  4. Make a method that will update the status of the booking to paid, unpaid or partial_paid depending on the price_remaining

  5. Make a method that will return all bookings that are paid_in_full, partially_paid or unpaid based on what parameters you give it
