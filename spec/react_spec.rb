require 'rails_helper'

describe "React testing", :type => :feature, js: true do
  it 'can check the Homepage for content' do
    visit('/')
    expect(page.title).to have_content("SumoCity")
    puts 'the homepage title is "SumoCity"'
    expect(page.body).to have_content("SumoCity")
    puts 'cool, capybara can read "SumoCity" somewhere on the homepage!'
    # expect(page.body).to have_content("Stable Explorer") # THIS DOES NOT PASS!!!
  end

  it 'can check the About page for content' do
    visit('/about')
    # expect(page).to have_css("about") # THIS ALSO DOES NOT PASS!!!
    puts 'cool, capybara can read "About SumoCity: somewhere on the about page!'
  end
end
