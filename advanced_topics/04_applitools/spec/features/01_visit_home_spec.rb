require 'spec_helper'

feature 'Visit The-Internet: Typos' do
  background do
    visit '/typos'
  end

  let(:eyes) do
    Applitools::Selenium::Eyes.new.tap do |eyes|
      eyes.api_key = MY_API_KEY
    end
  end

  scenario 'Title: Typos' do
    expect(page).to have_css('h3', text: 'Typos')
  end

end
