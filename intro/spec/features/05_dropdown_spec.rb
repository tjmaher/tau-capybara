require 'spec_helper'

feature 'Dropdown List: Validate Page Elements' do
  background do
    visit '/dropdown'
  end

  scenario 'Displayed Title: Dropdown List' do
    expect(page).to have_css('h3', text: 'Dropdown List')
  end
end

feature 'Dropdown List: Switching Values' do
  background do
    visit '/dropdown'
  end

  scenario 'Default Value: Please select an option' do
    expect(page).to have_select('dropdown', selected: 'Please select an option')
  end

  scenario 'Switched to: Option 1' do
    select('Option 1', :from => 'dropdown')
    expect(page).to have_select('dropdown', selected: 'Option 1')
  end

  scenario 'Switched to: Option 2' do
    select('Option 2', :from => 'dropdown')
    expect(page).to have_select('dropdown', selected: 'Option 2')
  end
end
