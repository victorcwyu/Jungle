# Jungle

## About this project

Jungle is a mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

This application allows a user to register/login, add items to their cart and checkout.

The Stripe API was used to simulate credit card payments.

## Preview

!["Screenshot of home page"](https://github.com/victorcwyu/jungle-rails/blob/master/docs/Screen%20Shot%202020-04-08%20at%202.16.31%20AM.png?raw=true)

!["Screenshot of product details page"](https://github.com/victorcwyu/jungle-rails/blob/master/docs/Screen%20Shot%202020-04-08%20at%202.25.59%20AM.png?raw=true)

!["Screenshot of cart page"](https://github.com/victorcwyu/jungle-rails/blob/master/docs/Screen%20Shot%202020-04-08%20at%202.16.46%20AM.png?raw=true)

!["Screenshot of Stripe API credit card payment simulation"](https://github.com/victorcwyu/jungle-rails/blob/master/docs/Screen%20Shot%202020-04-08%20at%202.17.10%20AM.png?raw=true)

!["Screenshot successful order page"](https://github.com/victorcwyu/jungle-rails/blob/master/docs/Screen%20Shot%202020-04-08%20at%202.17.19%20AM.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
