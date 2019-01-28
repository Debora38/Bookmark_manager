feature "index" do
  scenario "shows the title" do
    visit('/')
    expect(page).to have_content "Bookmarks"
  end
end
