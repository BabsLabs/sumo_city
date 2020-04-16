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