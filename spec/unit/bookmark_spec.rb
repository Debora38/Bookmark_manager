require 'bookmarks'
require 'web-helper'

RSpec.describe Bookmark do

  before (:all) do
    test_configure
  end

  context "#.all" do
    it "should contain the urls" do
      expect(Bookmark.all.last.url).to include('https://www.youtube.com/')
    end
  end

  context "#.create" do
    it "should add a new bookmark" do
      Bookmark.create("Facebook", "www.facebook.com")
      expect(Bookmark.all.last.url).to include("www.facebook.com")
      expect(Bookmark.all.last.title).to include("Facebook")
    end
  end

  context "#.delete" do
    it "should delete an existing bookmark" do
      Bookmark.delete(2)
      expect(Bookmark.all[1].title).not_to eq("Airbnb")
      expect(Bookmark.all[1].title).to include("YouTube")
    end
  end
end
