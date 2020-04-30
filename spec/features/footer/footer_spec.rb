require 'rails_helper'

describe "React Footer testing", :type => :feature, js: true do
  it 'can check the footer for content' do
    visit('/about')
    within ".footer" do
      expect(page).to have_content("BabsLabs Software 2020")
    end
  end
end