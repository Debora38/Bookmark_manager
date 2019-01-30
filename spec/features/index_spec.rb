RSpec.describe "feature tests" do

  before (:all) do
    test_configure
  end

  feature "index" do
    scenario "shows the title" do
      visit('/')
      expect(page).to have_content "Bookmarks Manager"
    end
  end

  feature 'bookmarks' do
    scenario "should show the bookmarks" do
      visit '/bookmarks'
      expect(page).to have_content "http://instagram.com/"
      expect(page).to have_content "https://en.airbnb.com/"
      expect(page).to have_content "https://www.youtube.com/"
    end
  end

  feature "add" do
    scenario "should add new bookmarks" do
      visit '/bookmarks/new'
      fill_in "url", with: "www.booking.com"
      click_on "Save"
      expect(page).to have_content "www.booking.com"
    end
  end
end
