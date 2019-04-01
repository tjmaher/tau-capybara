# frozen_string_literal: true

require 'bundler'
require 'capybara/dsl'
require 'capybara/rspec'

Bundler.setup(:default)
Bundler.require

Capybara.default_driver = :selenium_chrome

# Capybara.default_driver = :selenium_chrome_headless
Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.default_max_wait_time = 10


RSpec.configure do |config|
  config.formatter = :documentation

  config.before(:suite) do
    Capybara.register_driver(:chrome) do |app|
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument('--window-size=1240,1400')

      # Loggers Values: "OFF", "SEVERE", "WARNING", "INFO", "CONFIG", "FINE",
      #   "FINER", "FINEST", "ALL"
      # https://github.com/SeleniumHQ/selenium/wiki/DesiredCapabilities

    CAPABILITIES = Selenium::WebDriver::Remote::Capabilities.chrome(
      loggingPrefs: {
        browser: 'INFO', # Capture JavaScript errors in Browser
        driver: 'INFO' # Capture WebDriver severe errors
      }
    )

    Capybara::Selenium::Driver.new(app, browser: :chrome,
                                    desired_capabilities: CAPABILITIES,
                                      options: options)
    end
  end

  config.after(:suite) do
    browser_errors = Capybara.page.driver.browser.manage.logs.get(:browser)
    driver_errors = Capybara.page.driver.browser.manage.logs.get(:driver)

    open('logs/chrome.log', 'w') do |f|
      f << browser_errors
    end

    open('logs/chromedriver.log', 'w') do |f|
      f << driver_errors

    end
  end
end
