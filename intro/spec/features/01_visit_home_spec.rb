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
    expect(page).to have_current_path('https://the-internet.herokuapp.com')
  end

  scenario 'Verify Page Links Exist' do
    expect(page).to have_link('A/B Testing')
    expect(page).to have_link('Add/Remove Elements')
    expect(page).to have_link('Basic Auth')
    expect(page).to have_link('Broken Images')
    expect(page).to have_link('Challenging DOM')
    expect(page).to have_link('Checkboxes')
    expect(page).to have_link('Context Menu')
    expect(page).to have_link('Digest Authentication')
    expect(page).to have_link('Disappearing Elements')
    expect(page).to have_link('Drag and Drop')
    expect(page).to have_link('Dropdown')
    expect(page).to have_link('Dynamic Content')
    expect(page).to have_link('Dynamic Controls')
    expect(page).to have_link('Dynamic Loading')
    expect(page).to have_link('Entry Ad')
    expect(page).to have_link('Exit Intent')
    expect(page).to have_link('File Download')
    expect(page).to have_link('File Upload')
    expect(page).to have_link('Floating Menu')
    expect(page).to have_link('Forgot Password')
    expect(page).to have_link('Form Authentication')
    expect(page).to have_link('Frames')
    expect(page).to have_link('Geolocation')
    expect(page).to have_link('Horizontal Slider')
    expect(page).to have_link('Hovers')
    expect(page).to have_link('Infinite Scroll')
    expect(page).to have_link('Inputs')
    expect(page).to have_link('JQuery UI Menus')
    expect(page).to have_link('JavaScript Alerts')
    expect(page).to have_link('JavaScript onload event error')
    expect(page).to have_link('Key Presses')
    expect(page).to have_link('Large & Deep DOM')
    expect(page).to have_link('Multiple Windows')
    expect(page).to have_link('Nested Frames')
    expect(page).to have_link('Notification Messages')
    expect(page).to have_link('Redirect Link')
    expect(page).to have_link('Secure File Download')
    expect(page).to have_link('Shadow DOM')
    expect(page).to have_link('Shifting Content')
    expect(page).to have_link('Slow Resources')
    expect(page).to have_link('Sortable Data Tables')
    expect(page).to have_link('Status Codes')
    expect(page).to have_link('Typos')
    expect(page).to have_link('WYSIWYG Editor')
  end

  scenario 'Click Link: Form Authentication ==> Navigate to /login' do
    click_link('Form Authentication')
    expect(page).to have_current_path('/login')
    expect(page).to have_content('Login Page')
  end

  scenario 'Click On: Dropdown ==> Navigate to /dropdown' do
    # Click on a Link or Button
    click_on('Dropdown')
    expect(page).to have_current_path('/dropdown')
  end

  scenario 'Find Link and Click: Dynamic Loading ==> Navigate to /dynamic_loading' do
    # Can find_button('Text').click too!
    find_link('Dynamic Loading').click
    expect(page).to have_current_path('/dynamic_loading')
  end
end
