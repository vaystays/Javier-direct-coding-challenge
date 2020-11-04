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
5. Run `bundle exec rspec`

The goal of this challenge is to get all of the rspec tests to pass.
There are 4 tests related to the `bookings_controller`, you can find these tests in the `bookings_controller_spec.rb`

There will be 3 steps necessary to get these tests to pass.
  1. Write an instance method that updates a booking's `price_remaining` attribute to equal the difference between the price_total and price_paid attributes.
  2. Write an instance method that will update the status of the booking to 'paid_in_full', 'unpaid' or 'partially_paid' depending on the `price_remaining` attribute. If `price_remaining` is equal to `price_total`, the booking is paid in full. If `price_paid` is equal to zero, the booking is unpaid. Else, the booking has been partially paid. 
  3. Edit the index method on the bookings_controller to accept a param of filter if the param is not nil.

After completing send your answers in an email to ryan@getdirect.io