## Bookmark Manager

The website will have the following specification:

 - Show a list of bookmarks
 - Add new bookmarks
 - Delete bookmarks
 - Update bookmarks
 - Comment on bookmarks
 - Tag bookmarks into categories
 - Filter bookmarks by tag
 - Users manage their bookmarks

#### User Stories:
```
As a user
In order to select one
I want to see a list of my bookmarks
```

|View     | App          | Controller    | DB      |
|---------|------------------|-----------|---------|
|bookmarks.erb| Bookmarks_Manager| Bookmark | bookmarks |
|         |     app.rb   |     show()   |           |
|         |        |     add()    |           |
