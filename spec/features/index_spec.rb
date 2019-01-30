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
      expect(page).to have_content "Instagram"
      expect(page).to have_content "Airbnb"
      expect(page).to have_content "YouTube"
    end
  end

  feature "create" do
    scenario "should add new bookmarks" do
      visit '/bookmarks/new'
      fill_in "title", with: "Booking.com"
      fill_in "url", with: "www.booking.com"
      click_on "Save"
      expect(page).to have_content "Booking.com"
    end
  end
end
