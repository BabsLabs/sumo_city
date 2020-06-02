require 'rails_helper'

describe "React About testing", :type => :feature, js: true do
  it 'can check the About page for content' do
    visit('/about')
    
    within ".banner" do
      expect(page).to have_content("About")
    end

    expect(page).to have_css("#about-image")

    within "#about" do
      expect(page).to have_content("Sumo city is your homepage for all things Sumo")
      expect(page).to have_content("What is SumoCity?")
      expect(page).to have_content("SumoCity is a project designed to provide information on the sport of Sumo Wrestling, Sumos, and the Stables the sumo train in.")
      expect(page).to have_content("Photo credits")
      expect(page).to have_content("Photos used in sumo city are sourced from the following places:")
      expect(page).to have_content("By Giorgi Abdaladze, Official Photographer of the Administration of the President of Georgia - This file has been extracted from another file: Zourabichvili with Tochinoshin.jpg, CC BY-SA 4.0")
      expect(page).to have_selector(:css, 'a[href="https://commons.wikimedia.org/w/index.php?curid=89831658"]')
      expect(page).to have_content("By NNDDD - Own work, CC BY-SA 4.0")
      expect(page).to have_selector(:css, 'a[href="https://commons.wikimedia.org/w/index.php?curid=87412646"]')
      expect(page).to have_content("By FourTildes - Own work, CC BY-SA 3.0")
      expect(page).to have_selector(:css, 'a[href="https://commons.wikimedia.org/wiki/User:FourTildes"]')
      expect(page).to have_content("By Ogiyoshisan - Own work, CC BY-SA 4.0")
      expect(page).to have_selector(:css, 'a[href="https://commons.wikimedia.org/w/index.php?curid=79055031"]')
      expect(page).to have_content("By 山の山手線 - Own work, CC BY-SA 3.0")
      expect(page).to have_selector(:css, 'a[href="https://commons.wikimedia.org/w/index.php?curid=23325046"]')
      expect(page).to have_content("By WhiteMon at Japanese Wikipedia - Transferred from ja.wikipedia to Commons., Public Domain")
      expect(page).to have_selector(:css, 'a[href="https://commons.wikimedia.org/w/index.php?curid=78934692"]')
      expect(page).to have_content("Term Credits")
      expect(page).to have_content("The terms found on the SumoCity Wiki Page have been sourced from Wikipedia")
      expect(page).to have_link("Wiki Page")
      expect(page).to have_selector(:css, 'a[href="/terms"]')
      expect(page).to have_link("Wikipedia")
      expect(page).to have_selector(:css, 'a[href="https://en.wikipedia.org/wiki/Glossary_of_sumo_terms"]')
    end
  end
end