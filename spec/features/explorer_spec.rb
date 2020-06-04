require 'rails_helper'

describe "React Explorer testing", :type => :feature, js: true do
  it 'can check the Explorer page for content' do
    @stable = create(:stable)
    @sumo = create(:sumo, stable_id: @stable.id)

    visit('/')
    click_link('Explorer')
    expect(current_path).to eq('/explorer')

    expect(page).to have_css(".mapboxgl-map")
    expect(page).to have_css(".mapboxgl-control-container")
    # Check for stylesheet script
    expect(page).to have_selector(:css, 'script', visible: false, minimum: 1)
  end
end
