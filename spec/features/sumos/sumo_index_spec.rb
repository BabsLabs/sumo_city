require 'rails_helper'

describe "Stable index page testing", :type => :feature, js: true do
  it "can check the stables index page for information on all the stables" do
    @stable = create(:stable)
    @sumo_1 = create(:sumo, stable_id: @stable.id)
    @sumo_2 = create( :sumo, 
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
      stable_id: @stable.id)
    
    visit("/")
    click_link("Sumo")

    expect(current_path).to eq("/sumos")

    visit("/sumos")

    within(".banner") do
      expect(page).to have_content("Sumos")
    end
      
    within("#sumos-#{@sumo_1.id}") do
      expect(page).to have_content(@sumo_1.name)
      expect(page).to have_content(@sumo_1.rank)
      expect(page).to have_link('More Info')
    end
    
    within("#sumos-#{@sumo_2.id}") do
      expect(page).to have_content(@sumo_2.name)
      expect(page).to have_content(@sumo_2.rank)
      expect(page).to have_link('More Info')
    end
  end
end