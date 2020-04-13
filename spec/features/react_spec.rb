require 'rails_helper'

describe "React homepage testing", :type => :feature, js: true do
  it 'can check the Homepage for content' do
    visit('/')
    expect(page.title).to have_content("SumoCity")
    expect(page).to have_content("SumoCity")
    expect(page).to have_content("Stable Explorer")
    expect(page).to have_content("The place where Sumos train is called a Stable.")
    expect(page).not_to have_content("Sumo city is your homepage for all things Sumo")
  end
end

describe "React About testing", :type => :feature, js: true do
  it 'can check the About page for content' do
    visit('/about')
    expect(page).to have_content("About SumoCity")
    expect(page).to have_content("Sumo city is your homepage for all things Sumo")
    expect(page).to have_content("Includes info on Sumos and the Stables they train in.")
    expect(page).not_to have_content("The place where Sumos train is called a Stable.")
  end
end
