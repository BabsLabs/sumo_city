require 'rails_helper'

describe "React Index page testing", :type => :feature, js: true do
  it 'can check the Index page for content' do
    @term = Term.create!(english_name: "Kimetaoshi", japanese_name: "極め倒し", definition: "Immobilizing the opponent's arms and shoulders with one's arms and forcing him down (arm barring force down).")
    @stable = create(:stable)
    @sumo = create(:sumo, stable_id: @stable.id)

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

    within "#hero-sumo" do
      expect(page).to have_content("Professional sumo wrestlers are also known as Rikishi (力士).")
      expect(page).to have_content("Visit the Sumo page to learn more about all your favorite sumo wrestlers.")
      expect(page).to have_link("Sumo page")
      expect(page).to have_css(".profile-photo")
      expect(page).to have_css(".hero-image")
      expect(page).to have_css(".centered-text")
      expect(page).to have_css(".flex-center")
      expect(page).to have_content("Featured Sumo")
      expect(page).to have_content(@sumo.name)
    end
  end
end