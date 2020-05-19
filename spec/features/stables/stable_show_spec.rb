require "rails_helper"

describe "Stable show page testing", :type => :feature, js: :true do
  
  it "can check an individual stable page for banner content" do
    stable_1 = create(:stable)
    
    visit("/stables/#{stable_1.id}")
    
    within(".banner") do
      expect(page).to have_content("#{stable_1.title} Sumo Stable")
    end
  end
      
  it "can check an individual stable page for stable content" do
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
      # expect(page).to have_css(".colorbar-#{stable_2.hexcolor}")
    end
  end
      
  it "can check an individual stable page for content" do
    stable_3 = create(:stable)
    visit("/stables/#{stable_3.id}")
    
    within(".stableMap") do
      expect(page).to have_css(".mapboxgl-map")
    end
  end
end