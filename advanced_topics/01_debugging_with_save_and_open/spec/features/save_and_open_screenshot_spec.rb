require 'spec_helper'

# Two ways to debug:
#   save_and_open
#   save_and_open_screenshot

# Need to install the launchy gem to open the file automatically. If not:
#   save_and_open will be stored only as an html page you can open later.
#   save_and_open_screenshot will be stored as a png file.

# Install instructions: https://rubygems.org/gems/launchy/versions/2.4.3
# Github: https://github.com/copiousfreetime/launchy
#   Add to Gemfile then: bundle install


feature 'Debugging' do
  background do
    visit '/'
  end

  scenario 'save_and_open_screenshot' do
    save_and_open_screenshot
  end
end
