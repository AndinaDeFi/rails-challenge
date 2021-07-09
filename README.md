# Rails Challenge
Challege to be solved with Ruby on Rails.

## What we need
We'd like to have a Rails web app that:
* Shows a list of a few cryptocurrencies or tokens, displaying their ticker/symbol and their prices in USD.
* Lets a user log in using username and password.
* Lets logged in users to tag some cryptos as "favourite" (among the ones existing in the app).
* Allows authenticated users to either see their favourite cryptos or all of them, in the list.
* Permits that unauthenticated visitors see the list of coins and prices, but cannot choose their favourite ones.
* Also shows the number of users that marked each coin as favourite, next to their symbol and price.
* Has a model test asserting that a coin with null or zero price is invalid.
* Has a request/integration test for at least one route.
* Gets coin prices periodically and automatically updated.

## What we don't need
* Sign up (users may be seeded).
* Cryptocurrency/token CRUD (they may also be seeded).

## Recommended gems
* rails ~> 6.1.3.2
* factory_bot_rails
* faker
* pg

## Hints that may help
* Use common sense for anything that is not explicitely determined in [these instructions](https://github.com/AndinaDeFi/rails-challenge/blob/main/README.md).
* Cryptocurrency and token prices can be requested from an API such as [CoinGecko's](https://www.coingecko.com/en/api).

## How to submit your proposal
* Fork this repo and work on that fork.
* Provide in the README file any instructions to let anyone clone the new repo and run it locally.
* Use DB seeding for initial creation of users, coins and anything else necessary. Please provide credentials for at least one user.
* Regarding price update process, create the helpers, tasks or anything needed, and provide instructions on how you would set it up in a production environment.
* When you are ready to submit your proposal, open a pull request against [this repo](https://github.com/AndinaDeFi/rails-challenge).