require "rails_helper"

describe "Sumo show page testing", :type => :feature, js: :true do
  
  it "can check an individual sumo page for banner content" do
    stable_1 = create(:stable)
    sumo = create(:sumo, stable_id: stable_1.id)
    
    visit("/sumos/#{sumo.id}")
    
    within(".banner") do
      expect(page).to have_content("#{sumo.name}")
    end
  end
  
  it "can check an individual sumo page for sumo stats" do
    stable_2 = create(:stable)
    sumo_2 = create(:sumo, stable_id: stable_2.id)
    
    visit("/sumos/#{sumo_2.id}")

    within("#sumo-#{sumo_2.id}") do
      expect(page).to have_content(sumo_2.ring_name)
      expect(page).to have_link(sumo_2.stable.title)
      expect(page).to have_content(sumo_2.rank)
      expect(page).to have_content(sumo_2.date_of_birth)
      expect(page).to have_content(sumo_2.year_of_birth)
      expect(page).to have_content(sumo_2.place_of_birth)
      expect(page).to have_content(sumo_2.height)
      expect(page).to have_content(sumo_2.weight)
    end
  end

  it "can check for the sumo card image" do
    stable_3 = create(:stable)
    sumo_3 = create(:sumo, stable_id: stable_3.id)

    visit("/sumos/#{sumo_3.id}")
    
    within("#card-#{sumo_3.id}") do
      
    end
  end
end