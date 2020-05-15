require 'rails_helper'

describe "React Explorer testing", :type => :feature, js: true do
  it 'can check the About page for content' do
    visit('/')
    click_link('Explorer')
    expect(current_path).to eq('/explorer')

    expect(page).to have_css(".mapboxgl-map")
    expect(page).to have_css(".mapboxgl-control-container")
    # Check for stylesheet script
    expect(page).to have_selector(:css, 'script', visible: false, minimum: 1)
  end
end
