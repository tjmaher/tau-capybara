# frozen_string_literal: true

require 'bundler'
require 'capybara/dsl'
require 'capybara/rspec'
#require 'capybara/rails' #add this if the application being tested is a rails app

Bundler.setup(:default)
Bundler.require

# Which default browser do you want Selenium WebDriver to use?
# :selenium_chrome # Selenium driving Chrome
# :selenium_chrome_headless # Selenium driving Chrome in a headless configuration
# :selenium # Selenium driving firefox
# :selenium_headless #selenium driving Firefox in a headless configuration
# https://github.com/teamcapybara/capybara#selenium

Capybara.default_driver = :selenium
Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.default_max_wait_time = 10

# Run using:
# bundle exec rspec spec/features/login.rb --format documentation
# ... Or...

RSpec.configure do |config|
  config.formatter = :documentation
end
