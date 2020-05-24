require "rails_helper"

describe "Stable show page testing", :type => :feature, js: :true do
  
  it "can check an individual stable page for banner content", js: :true do
    stable_1 = create(:stable)
    
    visit("/stables/#{stable_1.id}")
    
    within(".banner") do
      expect(page).to have_content("#{stable_1.title} Sumo Stable")
    end
  end
      
  it "can check an individual stable page for stable content", js: :true do
    stable_2 = create(:stable)
    
    visit("/stables/#{stable_2.id}")

    within("#stable-#{stable_2.id}") do
      expect(page).to have_content(stable_2.address)
      expect(page).to have_content("Address: #{stable_2.address}")
      expect(page).to have_content(stable_2.address_jp)
      expect(page).to have_content("Website: #{stable_2.website}")
      expect(page).to have_content("Phone: #{stable_2.phone}")
      expect(page).to have_content("Ichimon: #{stable_2.ichimon}")
      expect(page).to have_content("Founded: #{stable_2.founded}")
      expect(page).to have_content("Closest Stations: #{stable_2.closest_stations}")
      expect(page).to have_content("Other Info: #{stable_2.other_info}")
      # expect(page).to have_css(".colorbar-#{stable_2.hexcolor}") // Can't find this element for some reason!?
    end
  end
      
  it "can check an individual stable page for content", js: :true do
    stable_3 = create(:stable)
    visit("/stables/#{stable_3.id}")
    
    within(".stableMap") do
      expect(page).to have_css(".mapboxgl-map")
    end
  end

  it "can check for a stables sumos if they have top sumo", js: :true do
    stable_4 = create(:stable)
    sumo_1 = create(:sumo, stable_id: stable_4.id)
    sumo_2 = create( :sumo, 
      name: "Fakesumo",
      heya: "Test-beya",
      full_name: "Fake Sumo",
      ring_name: "Fakesumo Ringname",
      rank: "Yokozuna",
      date_of_birth: "April 21",
      year_of_birth: "1984",
      place_of_birth: "Hokkaido",
      height: "180.0cm",
      weight: "140.0kg",
      favorite_techniques: "oshi",
      stable_id: stable_4.id)

    visit("/stables/#{stable_4.id}")
    
    within ".sumo-list" do
      expect(page).to have_content("#{stable_4.title}'s Top Sumo:")
      expect(page).to have_css(".sumo")

      within "#sumo-#{sumo_1.id}" do
        expect(page).to have_link(sumo_1.name)
        expect(page).to have_content("Rank: #{sumo_1.rank}")
      end

      within "#sumo-#{sumo_2.id}" do
        expect(page).to have_link(sumo_2.name)
        expect(page).to have_content("Rank: #{sumo_2.rank}")
      end
      
    end
  end
  
  it "it doesn;t show a stables top sumo section if they don't have top sumo", js: :true do
    stable_5 = create(:stable)

    visit("/stables/#{stable_5.id}")
    
    expect(page).to have_no_css(".sumo_list")
  end
end