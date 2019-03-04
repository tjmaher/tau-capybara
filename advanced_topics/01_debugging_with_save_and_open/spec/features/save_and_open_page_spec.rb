require 'spec_helper'

# Two ways to debug:
#   save_and_open_page: saves and opens unstyled html page
#   save_and_open_screenshot

# Need to install the launchy gem to open the file automatically. If not:
#   save_and_open_page will be stored only as an unstyled html page you can open later.
#   save_and_open_screenshot will be stored as a png file.

# Install instructions: https://rubygems.org/gems/launchy/versions/2.4.3
# Github: https://github.com/copiousfreetime/launchy
#   Add to Gemfile then: bundle install


feature 'Debugging' do
  background do
    visit '/'
  end

  scenario 'save_and_open_page' do
    save_and_open_page
  end
end
