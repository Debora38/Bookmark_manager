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

  feature "delete" do
    scenario "should delete existing bookmark" do
      page.driver.submit :delete, '/bookmarks/1', {}
      expect(page).not_to have_content "Instagram"
      expect(page).to have_content "Airbnb"
    end
  end

  feature "edit" do
    scenario "should edit an existing bookmark's title" do
      visit '/'
      first(:button, "Edit").click
      fill_in "title", with: "Test change"
      click_on "Save"
      expect(page).not_to have_content "Instagram"
      expect(page).to have_content "Test change"
    end
  end
end
