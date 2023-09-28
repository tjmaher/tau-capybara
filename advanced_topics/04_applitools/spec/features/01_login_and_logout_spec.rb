require 'spec_helper'

describe 'Applitools Capybara Example', :type => :feature, :js => true do

  # Initialize the eyes SDK and set your private API key.
  let(:eyes) do
    Applitools::Selenium::Eyes.new.tap do |eyes|
      eyes.api_key = APPLITOOLS_KEY_API
    end
  end

  it 'Login Page: Valid Credentials Login to Secure Area' do

    # Start the test and set the browser's viewport size to 800x600.
    eyes.open(app_name: 'The-Internet!', test_name: 'Login and Logout', driver: page.driver,
              viewport_size: { width: 800, height: 600 })

    # Go to the Login Page. Create: Visual Checkpoint #1.
    visit '/login'
    eyes.check_window('Login Page!')

    # Login and create: Visual Checkpoint #2.
    login('tomsmith', 'SuperSecretPassword!')
    eyes.check_window('Secure Area!')

    # Logout and Create: Visual Checkpoint #3
    logout_of_secure_area
    eyes.check_window('Back to Login Page!')

    # End the test.
    eyes.close

  end

end

def login(username, password)
  fill_in('Username', with: username)
  fill_in('Password', with: password)
  click_button('Login')
  expect(page).to have_css('h2', text: 'Secure Area')
end

def logout_of_secure_area
  find('a.button').click
  expect(page).to have_css('h2', text: 'Login Page')
end
