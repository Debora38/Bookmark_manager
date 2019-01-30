def test_configure
  @connection = PG.connect( dbname: 'bookmark_manager_test')
  @connection.exec ( 'TRUNCATE TABLE bookmarks;')
  @connection.exec ("INSERT INTO bookmarks (title, url) VALUES ('Instagram', 'http://instagram.com/')")
  @connection.exec ("INSERT INTO bookmarks (title, url) VALUES ('Airbnb', 'https://en.airbnb.com/')")
  @connection.exec ("INSERT INTO bookmarks (title, url) VALUES ('YouTube', 'https://www.youtube.com/')")
end
