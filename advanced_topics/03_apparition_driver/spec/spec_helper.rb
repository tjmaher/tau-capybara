# frozen_string_literal: true

require 'bundler'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/apparition'

Bundler.setup(:default)
Bundler.require

Capybara.default_driver = :apparition
Capybara.javascript_driver = :apparition

Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.default_max_wait_time = 10

# Run using:
# bundle exec rspec spec/features/login.rb --format documentation
# ... Or...

RSpec.configure do |config|
  config.formatter = :documentation
end
