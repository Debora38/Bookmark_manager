require 'bookmarks'

RSpec.describe Bookmark do

  context "#.all" do
    it "should contain the urls" do
      expect(Bookmark.all).to include('http://instagram.com/')
      expect(Bookmark.all).to include('https://en.airbnb.com/')
      expect(Bookmark.all).to include('https://www.youtube.com/')
    end
  end

  context "#.create" do
    it "should add a new bookmark" do
      Bookmark.create("www.facebook.com")
      expect(Bookmark.all).to include("www.facebook.com")
    end
  end
end
