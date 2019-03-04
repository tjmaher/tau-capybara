require 'spec_helper'

feature 'Visit The-Internet Home Page' do
  background do
    visit '/'
  end

  scenario 'Title: Welcome to the-internet' do
    expect(page).to have_content('Welcome to the-internet')
    expect(page).to have_css('h1', text: 'Welcome to the-internet')
  end

  scenario 'Subtitle: Available Examples' do
    expect(page).to have_css('h2', text: 'Available Examples')
  end

  scenario 'Current URL: https://the-internet.herokuapp.com/' do
    expect(current_url).to eq('https://the-internet.herokuapp.com/')
  end

  scenario 'Verify Link Exists: Form Authentication' do
    expect(page).to have_link('Form Authentication')
  end

  scenario 'Click Link: Form Authentication ==> Navigate to /login' do
    click_link('Form Authentication')
    expect(current_url).to eq('https://the-internet.herokuapp.com/login')
  end

  scenario 'Verify Link Exists: Dropdown' do
    expect(page).to have_link('Dropdown')
  end

  scenario 'Click On: Dropdown ==> Navigate to /dropdown' do
    # Click on a Link or Button
    click_on('Dropdown')
    expect(current_url).to eq('https://the-internet.herokuapp.com/dropdown')
  end

  scenario 'Find Link and Click: Dynamic Loading ==> Navigate to /dynamic_loading' do
    # Can find_button('Text').click too!
    find_link('Dynamic Loading').click
    expect(current_url).to eq('https://the-internet.herokuapp.com/dynamic_loading')
  end
end
