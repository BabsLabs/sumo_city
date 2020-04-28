require 'rails_helper'

describe "React homepage testing", :type => :feature, js: true do
  it 'can check the Homepage for content' do
    @term = Term.create!(english_name: "Kimetaoshi", japanese_name: "極め倒し", definition: "Immobilizing the opponent's arms and shoulders with one's arms and forcing him down (arm barring force down).")

    visit('/')
    expect(page.title).to have_content("SumoCity")

    within "#heroStableExplorer" do     
      expect(page).to have_content("Stable Explorer")
      expect(page).to have_content("The place where Sumos train is called a Stable.")
      expect(page).to have_content("Use the interactive Stable Explorer to learn more about the stables of all your favorite sumo wrestlers.")
      expect(page.find('#heroMapboxImage')['src']).to have_content('DemoMapboxImage-f20bd96828d8c87fdf7b9e69d18de416.png')
      expect(page.find('#heroMapboxImage')['alt']).to eq('MapboxImage')
    end

    within "#heroSumoWiki" do
      expect(page).to have_content("Learn More About Everything Sumo")  
      expect(page).to have_content("Use our Sumo Wiki to learn more about the rules, history, and vocab of Sumo.")  
      expect(page).to have_content("Featured Term")
      expect(page).to have_content(@term.english_name)
      expect(page).to have_content(@term.japanese_name)
      expect(page).to have_content(@term.definition)
    end

    # Make sure About component content is not being rendered
    expect(page).not_to have_content("Sumo city is your homepage for all things Sumo")
  end
end