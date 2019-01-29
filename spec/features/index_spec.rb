feature "index" do
  scenario "shows the title" do
    visit('/')
    expect(page).to have_content "Bookmarks Manager"
  end
end

feature 'bookmarks' do
  scenario "should show the bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "Makers"
    expect(page).to have_content "Google"
    expect(page).to have_content "Codewars"
  end
end
