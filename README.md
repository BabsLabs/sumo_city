# Sumo City

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
* Start server: `rails s`

## Testing
Testing is currently setup and done with Rspec, Capybara, and Selenium. All tests are continuously integrated with TravisCI.

### Running Tests
* Run the full test suite: `rspec`

### Testing Details
The Capybara javascript driver has been set as Chrome with Selenium instead of RackTest. This configuration is done in the `rails_helper.rb`. It is possible these settings may need to be changed for future tests.