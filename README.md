# Sumo City
<img src="app/javascript/components/images/SumoLogo.png" alt="SumoCity Logo" width="200"/>

[![Build Status](https://travis-ci.com/BabsLabs/sumo_city.svg?branch=master)](https://travis-ci.com/BabsLabs/sumo_city)

### Jump To
- [About](#about)
- [Setup](#setup)
- [Testing](#testing)
- [Technologies](#technologies)
- [Warnings and Issues](#warnings-and-issues)
- [Requirements](#requirements)
- [Contributions](#contributions)

## About
Welcome to SumoCity! SumoCity is designed to keep track of everything Sumo! Currently SumoCity is in the first stages but soon you will be able to use the interactive Stable Explorer to learm more about where your favorite Sumos train. In addition there will be a Sumo Wiki with info on everything Sumo. Stay tuned for updates to SumoCity!

## Setup
* Clone repo: `git clone https://github.com/BabsLabs/sumo_city.git`
* Change into SumoCity project directory
* Install dependencies: `bundle install`
* Create database: `rails db:create`
* Migrate to development database: `rails db:migrate`
* Run rake task to import data to development database: `rake import`
* Add `.env` file to root directory
* In `.env` file add `MAPBOX_KEY=<your key from mapbox>`
* Start server: `rails s`

*Note* Ruby 2.7.0 generates a number of deprecation warnings when running `rails`, `rake`, and `rspec` commands. These deprecation warnings can be silenced by appending `RUBYOPT='-W:no-deprecated'` to any command. See the [Warnings and Issues](#Warnings-and-Issues) section for more info.

### Environment Variables
You need the following mapbox variables configured in your `.env` file
* `MAPBOX_ACCESS_TOKEN = "your_map_box_token`

## Testing
Testing is currently setup and done with Rspec, Capybara, and Selenium. All tests are continuously integrated with TravisCI.

### Running Tests
* Run the full test suite: `rspec`
* Run an individual test: `rspec /PATH/TO/TEST`

### Testing Details
The Capybara javascript driver has been set as Chrome with Selenium instead of RackTest. This configuration is done in the `rails_helper.rb`. It is possible these settings may need to be changed for future tests.

## Technologies

### Languages and Frameworks
- Ruby on Rails
- Javascript / React

### Testing
- Rspec
- Capybara
- Selenium
- Headless chromedriver
- Webpacker
- Simplecov
- shoulda-matchers
- factory_bot
- launchy

### Extensions
- SASS
- Mapbox-Gl / @urbica/react-map-gl

### Database Management
- Postgresql

## Warnings and Issues

### Known warnings
Ruby 2.7.0 is currently generating a series of deprecation warnings when running `rails`, `rake`, and `rspec` commands. This includes running the rails server (`rails s`) and when rendering page refreshes during the local development process.

These deprecation warnings can be silenced by appending the `RUBYOPT='-W:no-deprecated'` command to any rails, rake, or rspec command such as `RUBYOPT='-W:no-deprecated' rails s`, `RUBYOPT='-W:no-deprecated' rails: db migrate`, `RUBYOPT='-W:no-deprecated' rake import:terms`, or `RUBYOPT='-W:no-deprecated' rspec`.

**Example warnings:**
```
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/activesupport-6.0.2.2/lib/active_support/messages/rotator.rb:28: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/activesupport-6.0.2.2/lib/active_support/messages/rotator.rb:6: warning: The called method `initialize' is defined here
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/actionview-6.0.2.2/lib/action_view/view_paths.rb:11: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/actionview-6.0.2.2/lib/action_view/lookup_context.rb:140: warning: The called method `template_exists?' is defined here
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/actionview-6.0.2.2/lib/action_view/unbound_template.rb:24: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/actionview-6.0.2.2/lib/action_view/template.rb:130: warning: The called method `initialize' is defined here
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/sprockets-4.0.0/lib/sprockets/base.rb:119: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/babslabs/.rbenv/versions/2.7.0/lib/ruby/gems/2.7.0/gems/sprockets-4.0.0/lib/sprockets/base.rb:78: warning: The called method `find_asset' is defined here
```

## Requirements
 * Ruby version
 `2.7.0`
 * Rails Version
 `6.0.2.2`
 * React Version
 `6.13.2`

 ## Contributions
Interested in contributiong to SumoCity? Go ahead and open a PR!

###### BabsLabs Software 2020
