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

Your task for this repository will be to add two methods to the booking model, and write two tests to cover these new methods.

1. Make a method on the booking model that will return all bookings that are in between a given range.
2. Make a method that will return a json object that contains the `price_total` `price_paid` and `price_remaining` for the given booking.
