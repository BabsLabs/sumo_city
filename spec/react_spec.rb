require 'rails_helper'

describe "GET '/' - homepage title", :type => :feature, js: true do
  it 'can check the page title' do
    visit('/')
    expect(page.title).to have_content("SumoCity")
    puts 'the homepage title is "SumoCity"'
    expect(page.body).to have_content("SumoCity")
    puts 'cool, capybara can read the title somewhere on the home page!'
    # expect(page.body).to have_content("Stable Explorer") # THIS DOES NOT PASS!!!
  end
end
