def test_configure
  @connection = PG.connect( dbname: 'bookmark_manager_test')
  @connection.exec ( 'TRUNCATE TABLE bookmarks;')
  @connection.exec ("INSERT INTO bookmarks (id, title, url) VALUES (1, 'Instagram', 'http://instagram.com/')")
  @connection.exec ("INSERT INTO bookmarks (id, title, url) VALUES (2, 'Airbnb', 'https://en.airbnb.com/')")
  @connection.exec ("INSERT INTO bookmarks (id, title, url) VALUES (3, 'YouTube', 'https://www.youtube.com/')")
end
