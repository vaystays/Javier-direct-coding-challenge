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
  1. Write an instance method on the booking model that updates a booking's `price_remaining` attribute to equal the difference between the price_total and price_paid attributes.
  2. Write an instance method on the booking model that will update the status of the booking to 'paid_in_full', 'unpaid' or 'partially_paid' depending on the `price_remaining` attribute. If `price_remaining` is equal to `price_total`, the booking is paid in full. If `price_paid` is equal to zero, the booking is unpaid. Else, the booking has been partially paid. 
  3. Edit the index method on the bookings_controller to accept a param of filter if the param is not nil, and to return the correct bookings.

After completing these 3 steps, run `bundle exec rspec` and all of your tests should pass successfully. The `bookings_controller_spec.rb` test uses the `seed.rb` file to seed in 60 different bookings when you are running the test. The tests makes a GET request to the bookings index and they will check if the count of the results sent from the request match according to the filter that is passed. You will also need to find a way to get your instance methods to update your booking objects after the seed file creates them.
  
If you can't get the tests to pass, please still submit a PR with the work you did. I would recommend leaving comments that explain what you were trying to do and why you did it.

After completing open up a PR on this repo for the Direct team to review.
Any questions please email ryan@getdirect.io