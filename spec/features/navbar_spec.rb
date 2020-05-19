require 'rails_helper'

describe "React Navbar testing", :type => :feature, js: true do
  it 'can check the desktop Navbar for contents' do
    visit('/')
    within ".navbar" do
      # Check for SumoCtiy Name
      expect(page).to have_content("SumoCity")
      expect(page).to have_css("#navbar-sumoLogo")

      # Check for desktop logo
      expect(page).to have_css("#navbar-sumoLogo")

      # Check for desktop menu items
      expect(page).to have_css("#desktop-navbar")

      within "#desktop-navbar" do
        expect(page).to have_link("About")
        expect(page).to have_link("Home")
        expect(page).to have_link("Wiki")
        expect(page).to have_link("Explorer")
        expect(page).to have_link("Stables")
      end
    end
  end

  it 'can check the mobile Hamburger menu for contents' do
    visit '/'
    within ".navbar" do
      # Check for SumoCtiy Name
      expect(page).to have_content("SumoCity")
      expect(page).to have_css("#navbar-sumoLogo")

      # Check for mobile menu items
      expect(page).to have_css("#hamburger-menu", visible: false)
      expect(page).to have_css(".bm-overlay", visible: false)
      expect(page).to have_css(".bm-menu-wrap", visible: false)
      expect(page).to have_css(".bm-item-list", visible: false)
      expect(page).to have_link("About", visible: false)
      expect(page).to have_link("Home", visible: false)
      expect(page).to have_link("Wiki", visible: false)
      expect(page).to have_link("Explorer", visible: false)
      expect(page).to have_link("Stables", visible: false)
    end
  end
end
