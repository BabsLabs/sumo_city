require 'rails_helper'

describe "React homepage testing", :type => :feature, js: true do
  it 'can check the Homepage for content' do
    @term = Term.create!(english_name: "Kimetaoshi", japanese_name: "極め倒し", definition: "Immobilizing the opponent's arms and shoulders with one's arms and forcing him down (arm barring force down).")

    visit('/')
    expect(page.title).to have_content("SumoCity")

    within "#hero-explorer" do     
      expect(page).to have_content("SumoCity Explorer")
      expect(page).to have_content("Use the interactive SumoCity Explorer to learn more about the stables of all your favorite sumo wrestlers.")
      expect(page).to have_link("SumoCity Explorer", :href => "/explorer")

      within "#hero-map" do
        expect(page).to have_css(".mapboxgl-map")
        expect(page).to have_css(".mapboxgl-control-container")
      end
    end

    within "#hero-sumo-wiki" do
      expect(page).to have_content("Learn More About Everything Sumo")  
      expect(page).to have_content("Use the SumoWiki to learn more about the rules, history, and vocabulary of Sumo.")
      expect(page).to have_link("SumoWiki", :href => "/terms")
      expect(page).to have_content("Featured Term")
      expect(page).to have_content(@term.english_name)
      expect(page).to have_content(@term.japanese_name)
      expect(page).to have_content(@term.definition)
    end

    # Make sure About component content is not being rendered
    expect(page).not_to have_content("Sumo city is your homepage for all things Sumo")
  end
end