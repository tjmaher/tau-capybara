require 'spec_helper'

feature 'Visit The-Internet Home Page' do
  background do
    visit '/'
  end

  scenario 'Take Screenshot: Welcome to the-internet' do
    expect(page).to have_content('Welcome to the-internet')
    screenshot_name = "screenshot_" + Time.now.to_s
    save_screenshot("../screenshots/#{screenshot_name}.png")
  end

  scenario 'HTTP Status Code: OK 200' do
    expect(page).to have_content('Welcome to the-internet')
    expect(page.status_code).to eq(200)
  end

  scenario 'Response Headers: Content-Type => text/html;charset=utf-8' do
    expect(page).to have_content('Welcome to the-internet')
    expect(page.response_headers).to include("Content-Type" => "text/html;charset=utf-8")
    puts "Response Headers: #{page.response_headers}"
  end
end
