## Bookmark Manager

The website will have the following specification:

 - Show a list of bookmarks
 - Add new bookmarks
 - Delete bookmarks
 - Update bookmarks
 - Comment on bookmarksC
 - Tag bookmarks into categories
 - Filter bookmarks by tag
 - Users manage their bookmarks

#### User Stories:
```
As a user
In order to select one
I want to see a list of my bookmarks
```

```
As a user
In order to save websites I like
I want to add new bookmarks
```

```
As a user
In order to remove websites I don't need anymore
I want to delete existing bookmarks
```

|View     | App          | Controller    | DB      |
|---------|------------------|-----------|---------|
|bookmarks.erb| Bookmarks_Manager| Bookmark | bookmarks |
|         |     app.rb   |     show()   |           |
|         |        |     add()    |           |


### Set up the Database:
 - Connect to psql
 - Create the database using the psql command CREATE DATABASE bookmark_manager;
 - Connect to the database using the pqsl command \c bookmark_manager;
 - Run the query we have saved in the file 01_create_bookmarks_table.sql

 ### Set up the Test Database:
  - Connect to psql
  - Create the database using the psql command CREATE DATABASE bookmark_manager_test;
  - Connect to the database using the pqsl command \c bookmark_manager_test;
  - Run the query we have saved in the file 01_create_bookmarks_table.sql

  ### Alter table adding title column in Test enviroment
  - Connect to psql
  - Create the database using the psql command CREATE DATABASE bookmark_manager_test;
  - Connect to the database using the pqsl command \c bookmark_manager_test;
  - Run the query we have saved in the file 02_alter_table_with_title_column.sql

  ### Alter table adding title column
  - Connect to psql
  - Create the database using the psql command CREATE DATABASE bookmark_manager;
  - Connect to the database using the pqsl command \c bookmark_manager;
  - Run the query we have saved in the file 02_alter_table_with_title_column.sql
