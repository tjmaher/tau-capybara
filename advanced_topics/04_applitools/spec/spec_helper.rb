# frozen_string_literal: true

require 'bundler'
require 'capybara/dsl'
require 'capybara/rspec'

require 'eyes_selenium'
require 'eyes_capybara'
# require 'applitools/capybara'

MY_API_KEY = '1HWNQQkG5dGMVMTRSfGVsya5mfvlNVJ98LoOxeo6eEYI110'

Bundler.setup(:default)
Bundler.require

Capybara.default_driver = :selenium_chome
Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.default_max_wait_time = 10

Applitools.register_capybara_driver :browser => :chrome

# Run using:
# bundle exec rspec spec/features/login.rb --format documentation
# ... Or...

RSpec.configure do |config|
  config.formatter = :documentation
end
