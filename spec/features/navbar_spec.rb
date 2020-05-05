require 'rails_helper'

describe "React About testing", :type => :feature, js: true do
  it 'can check the About page for content' do
    visit('/')
    within ".navbar" do
      expect(page).to have_content("SumoCity")
      expect(page).to have_link("About")
      expect(page).to have_link("Home")
      expect(page).to have_link("Wiki")
      expect(page).to have_css("#navbar-sumoLogo")
      expect(page).to have_link("Explorer")
    end
  end
end
