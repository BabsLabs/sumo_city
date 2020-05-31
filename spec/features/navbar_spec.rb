require 'rails_helper'

describe "React Navbar testing", :type => :feature, js: true do
  it 'can check the desktop Navbar for contents' do
    visit('/')
    within ".navbar" do
      expect(page).to have_content("SumoCity")
      expect(page).to have_css("#navbar-sumoLogo")

      expect(page).to have_css("#navbar-sumoLogo")

      expect(page).to have_css("#desktop-navbar")

      within "#desktop-navbar" do
        expect(page).to have_link("About")
        expect(page).to have_link("Home")
        expect(page).to have_link("Wiki")
        expect(page).to have_link("Explorer")
        expect(page).to have_link("Stables")
        expect(page).to have_link("Sumo")

        expect(page).to have_css(".fas")
        expect(page).to have_css(".fa-home")
        expect(page).to have_css(".fa-map-marked-alt")
        expect(page).to have_css(".fa-store-alt")
        expect(page).to have_css(".fa-id-badge")
        expect(page).to have_css(".fa-book")
        expect(page).to have_css(".fa-info-circle")
        expect(page).to have_css(".fa-2x")
      end
    end
  end

  it 'can check the mobile Hamburger menu for contents' do
    visit '/'
    within ".navbar" do
      expect(page).to have_content("SumoCity")
      expect(page).to have_css("#navbar-sumoLogo")

      expect(page).to have_css("#hamburger-menu", visible: false)
      expect(page).to have_css(".bm-overlay", visible: false)
      expect(page).to have_css(".bm-menu-wrap", visible: false)
      expect(page).to have_css(".bm-item-list", visible: false)
      expect(page).to have_link("About", visible: false)
      expect(page).to have_link("Home", visible: false)
      expect(page).to have_link("Wiki", visible: false)
      expect(page).to have_link("Explorer", visible: false)
      expect(page).to have_link("Stables", visible: false)
      expect(page).to have_link("Sumo", visible: false)
      
      expect(page).to have_css(".fas", visible: false)
      expect(page).to have_css(".fa-home", visible: false)
      expect(page).to have_css(".fa-map-marked-alt", visible: false)
      expect(page).to have_css(".fa-store-alt", visible: false)
      expect(page).to have_css(".fa-id-badge", visible: false)
      expect(page).to have_css(".fa-book", visible: false)
      expect(page).to have_css(".fa-info-circle", visible: false)
    end
  end
end
