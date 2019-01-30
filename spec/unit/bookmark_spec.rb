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
end
