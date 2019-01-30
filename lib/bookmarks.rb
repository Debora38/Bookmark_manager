require 'pg'

class Bookmark

  attr_reader :title, :url, :id

  def initialize(title:, url:, id:)
    @title = title
    @url = url
    @id = id
  end

  def self.all
    database_connection
    result = @connection.exec( "SELECT * FROM bookmarks;")
    result.map { |bookmark| Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url']) }
  end

  def self.create(title, new_bookmark)
    database_connection
    @connection.exec( "INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{new_bookmark}');")
  end

  def self.delete(id)
    database_connection
    @connection.exec( " DELETE FROM bookmarks WHERE id = #{id}")
  end

  def self.find(id)
    database_connection
    result = @connection.exec( "SELECT * FROM bookmarks WHERE id = #{id}")
    result.map { |bookmark| Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url']) }
  end

  def self.edit(id, title, url)
    database_connection
    @connection.exec( "UPDATE bookmarks SET url = '#{url}', title = '#{title}' WHERE id = #{id};")
  end

 private

  def self.database_connection
    if ENV['ENVIRONMENT'] == 'test'
      @connection = PG.connect( dbname: 'bookmark_manager_test')
    else
      @connection = PG.connect( dbname: 'bookmark_manager')
    end
  end
end
