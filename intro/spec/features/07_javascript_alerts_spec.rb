require 'spec_helper'

feature 'JavaScript Alerts: Validate Page Elements' do
  background do
    visit '/javascript_alerts'
  end

  scenario 'Displayed Title: Dynamically Loaded Page Elements' do
    expect(page).to have_css('h3', text: 'JavaScript Alerts')
  end

  scenario 'Displayed Button: Click for JS Alert' do
    expect(page).to have_button('Click for JS Alert')
  end

  scenario 'Displayed Button: Click for JS Confirm' do
    expect(page).to have_button('Click for JS Confirm')
  end

  scenario 'Displayed Button: Click for JS Prompt' do
    expect(page).to have_button('Click for JS Prompt')
  end
end

feature 'JavaScript Alerts: Interacting with Modals' do
  background do
    visit '/javascript_alerts'
  end

  scenario 'JS Alert: Select [OK] => Message: Successfully Clicked Alert' do
    accept_alert do
      click_button('Click for JS Alert')
    end
    expect(page).to have_content('You successfuly clicked an alert')
  end

  scenario 'JS Confirm: Dismiss Alert, Select [Cancel] => Message: You clicked: Cancel' do
    dismiss_confirm do
      click_button('Click for JS Confirm')
    end
    expect(page).to have_content('You clicked: Cancel')
  end

  scenario 'JS Confirm: Accept Alert, Select [OK] => Message: You clicked: Ok' do
    message = accept_confirm do
      click_button('Click for JS Confirm')
    end
    expect(message).to eq('I am a JS Confirm')
    expect(page).to have_content('You clicked: Ok')
  end
end
