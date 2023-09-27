require 'spec_helper'

feature 'Within: Scoping' do
  background do
    visit '/checkboxes'
  end

  scenario 'Within (Checkboxes): checkbox 1' do
    within('form#checkboxes') do
      expect(page).to have_content('checkbox 1')
    end
  end

  scenario 'Within (Checkboxes): checkbox 2' do
    within('form#checkboxes') do
      expect(page).to have_content('checkbox 2')
    end
  end

  scenario 'Within (Page Footer): Elemental Selenium' do
    within('div#page-footer.row') do
      expect(page).to have_link('Elemental Selenium')
    end
  end
end
