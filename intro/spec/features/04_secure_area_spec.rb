require 'spec_helper'

feature 'Secure Area: Validate Page Elements After Login' do
  background do
    visit '/login'
    login('tomsmith', 'SuperSecretPassword!')
  end

  scenario 'Displayed Title: Secure Area' do
    expect(page).to have_css('h2', text: 'Secure Area')
  end

  scenario 'Displayed Message: Welcome to the Secure Area' do
    expect(page).to have_content('Welcome to the Secure Area')
  end

  scenario 'Displayed Button: Logout' do
    # Won't work: expect(page).to have_button('Logout')
    expect(page).to have_css('a.button')
  end

  scenario 'Displayed Alert: You logged into a secure area!' do
    info_message = 'You logged into a secure area!'
    expect(page).to have_css('div.flash', text: info_message)
  end
end

feature 'Secure Area: User Can Logout' do
  background do
    visit '/login'
    login('tomsmith', 'SuperSecretPassword!')
  end

  scenario 'Select Logout Button: Login Page with Info Message' do
    info_message = 'You logged out of the secure area!'
    find('a.button').click
    expect(page).to have_css('div.flash', text: info_message)
    expect(page).to have_css('h2', text: 'Login Page')
  end
end

def login(username, password)
  fill_in('Username', with: username)
  fill_in('Password', with: password)
  click_button('Login')
  expect(page).to have_css('h2', text: 'Secure Area')
end
