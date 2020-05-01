require 'rails_helper'

describe 'SumoWiki page', :type => :feature, js: true do
  it "displays the name of all the terms with their english name, japanese name, and definition" do
    @term_1 = Term.create!(english_name: "Kimetaoshi", japanese_name: "極め倒し", definition: "Immobilizing the opponent's...")
    @term_2 = Term.create!(english_name: "Mono-ii", japanese_name: "物言い", definition: "The discussion held by the shimpan...")
    @term_3 = Term.create!(english_name: "Tsukebito", japanese_name: "付け人", definition: "A rikishi in the lower divisions...")

    visit '/terms'

    within '.banner' do
      expect(page).to have_content("SumoWiki")
    end

    within "#term-#{@term_1.id}" do
      expect(page).to have_content(@term_1.english_name)
      expect(page).to have_content(@term_1.japanese_name)
      expect(page).to have_content(@term_1.definition)
    end

    within "#term-#{@term_2.id}" do
      expect(page).to have_content(@term_2.english_name)
      expect(page).to have_content(@term_2.japanese_name)
      expect(page).to have_content(@term_2.definition)
    end

    within "#term-#{@term_3.id}" do
      expect(page).to have_content(@term_3.english_name)
      expect(page).to have_content(@term_3.japanese_name)
      expect(page).to have_content(@term_3.definition)
    end

  end
end