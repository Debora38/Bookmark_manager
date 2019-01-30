require 'pg'

class Bookmark

  def self.all
    database_connection
    result = @connection.exec( "SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(new_bookmark)
    database_connection
    @connection.exec( "INSERT INTO bookmarks (url) VALUES ('#{new_bookmark}');")
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
