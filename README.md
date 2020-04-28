# Sumo City
<img src="app/javascript/components/images/SumoLogo.png" alt="SumoCity Logo" width="200"/>

[![Build Status](https://travis-ci.com/BabsLabs/sumo_city.svg?branch=master)](https://travis-ci.com/BabsLabs/sumo_city)

# About
Welcome to SumoCity! SumoCity is designed to keep track of everything Sumo! Currently SumoCity is in the first stages but soon you will be able to use the interactive Stable Explorer to learm more about where your favorite Sumos train. In addition there will be a Sumo Wiki with info on everything Sumo. Stay tuned for updates to SumoCity!

## Requirements
 * Ruby version
 `2.7.0`
 * Rails Version
 `6.0.2.2`
 * React Version
 `6.13.2`

## Setup
* Clone repo: `git clone https://github.com/BabsLabs/sumo_city.git`
* Change into SumoCity project directory
* Install dependencies: `bundle install`
* Create database: `rails db:create`
* Migrate to development database: `rails db:migrate`
* Run rake task to import data to development database: `rake import:terms`
* Start server: `rails s`

## Testing
Testing is currently setup and done with Rspec, Capybara, and Selenium. All tests are continuously integrated with TravisCI.

### Running Tests
* Run the full test suite: `rspec`
* Run an individual test: `rspec /PATH/TO/TEST`

### Testing Details
The Capybara javascript driver has been set as Chrome with Selenium instead of RackTest. This configuration is done in the `rails_helper.rb`. It is possible these settings may need to be changed for future tests.

## TechStack

### Languages and Frameworks
- Ruby on Rails
- React-Rails

### Testing
- Rspec
- Capybara
- Selenium
- headless chromium webdriver
- Webpacker
- Simplecov

### Database Management
- Postgresql

## Contributions
Interested in contributiong to SumoCity? Go ahead and open a PR!