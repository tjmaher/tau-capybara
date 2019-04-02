# frozen_string_literal: true

require 'bundler'
require 'capybara/dsl'
require 'capybara/rspec'

require 'eyes_selenium'
require 'eyes_capybara'

Bundler.setup(:default)
Bundler.require

Capybara.default_max_wait_time = 10
Capybara.app_host = 'https://the-internet.herokuapp.com'

Applitools.register_capybara_driver :browser => :chrome

# Run using:
# bundle exec rspec spec/features/login.rb --format documentation
# ... Or...

RSpec.configure do |config|
  config.formatter = :documentation
end
