require 'rails_helper'

describe "Stable index page testing", :type => :feature, js: true do
  it "can check the stables index page for information on all the stables" do
    @stable_1 = create(:stable)
    @stable_2 = create(:stable, 
      title: "Fake-beya",
      ichimon: "Fake-ichimon",
      founded: "2021",
      address: "234 fake address",
      address_jp: "234 試験住所、市、州、日本",
      phone: "0-987654-321",
      closest_stations: "Fake Station, Fake Stop",
      website: "www.fakestablewebsite.com",
      hexcolor: "#669295",
      description: "Hark! in the courtyard and down the rocky way the roll of heavy wheels, the crack of whips, and the chorus of the Szgany as they pass into the distance.",
      lon: 39.5555,
      lat: 139.8888,
      other_info: "I am alone in the castle with those awful women. Faugh! Mina is a woman, and there is nought in common. They are devils of the Pit!"
    )
    @sumo = create(:sumo, stable_id: @stable_1.id)

    visit("/")
    click_link("Stables")

    expect(current_path).to eq("/stables")

    visit("/stables")

    within(".banner") do
      expect(page).to have_content("Stables")
    end
      
    within("#stables-#{@stable_1.id}") do
      expect(page).to have_content(@stable_1.title)
      expect(page).to have_content(@stable_1.address)
      expect(page).to have_link(@stable_1.website)
      expect(page).to have_link('More Info')
    end

    within("#stables-#{@stable_2.id}") do
      expect(page).to have_content(@stable_2.title)
      expect(page).to have_content(@stable_2.address)
      expect(page).to have_link(@stable_2.website)
      expect(page).to have_link('More Info')
    end
  end
end