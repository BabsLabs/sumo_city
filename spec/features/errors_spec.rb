require 'rails_helper'

describe "Errors", :type => :feature, js: true do
  it "renders a custom 404 error page" do
    visit '/404'

    expect(page).to have_content("404")
    expect(page).to have_content("Oshidashi! Something went wrong")
    expect(page).to have_content("You have reached the 404 error page of SumoCity")
  end

  it "renders a custom 422 error page" do
    visit '/422'

    expect(page).to have_content("422")
    expect(page).to have_content("Hatakikomi! Something went wrong")
    expect(page).to have_content("You have reached the 422 error page of SumoCity")
  end

  it "renders a custom 500 error page" do
    visit '/500'

    expect(page).to have_content("500")
    expect(page).to have_content("Yorikiri! Something went wrong")
    expect(page).to have_content("You have reached the 500 error page of SumoCity")
  end
end
