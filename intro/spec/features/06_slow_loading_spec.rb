require 'spec_helper'

feature 'Dropdown List: Validate Page Elements' do
  background do
    visit 'dynamic_loading/1'
  end

  scenario 'Displayed Title: Dynamically Loaded Page Elements' do
    expect(page).to have_css('h3', text: 'Dynamically Loaded Page Elements')
  end

  scenario 'Displayed Button: Start' do
    expect(page).to have_button('Start')
  end
end


# Wait controlled by SPEC_HELPER: Capybara.default_max_wait_time = 30
# See https://github.com/teamcapybara/capybara#asynchronous-javascript-ajax-and-friends

feature 'Checking Slow Loading Components' do
  background do
    visit 'dynamic_loading/1'
  end

  scenario 'Title: Example 1' do
    expect(page).to have_css('h4', text: 'Example 1: Element on page that is hidden')
  end

  scenario 'Page Should Wait For Hello World' do
    click_button('Start')
    expect(page).to have_content('Hello World!')
  end
end

feature 'Checking Components Loaded Later' do
  background do
    visit 'dynamic_loading/2'
  end

  scenario 'Title: Example 2' do
    expect(page).to have_css('h4', text: 'Example 2: Element rendered after the fact')
  end

  scenario 'Page Should wait for Hello World!' do
    click_button('Start')
    expect(page).to have_content('Hello World!')
  end
end