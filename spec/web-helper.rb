def test_configure
  @connection = PG.connect( dbname: 'bookmark_manager_test')
  @connection.exec ( 'TRUNCATE TABLE bookmarks;')
  @connection.exec ("INSERT INTO bookmarks (url) VALUES ('http://instagram.com/')")
  @connection.exec ("INSERT INTO bookmarks (url) VALUES ('https://en.airbnb.com/')")
  @connection.exec ("INSERT INTO bookmarks (url) VALUES ('https://www.youtube.com/')")
end
