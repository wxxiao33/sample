# README

This is the first part of pa rails, a course select website.
This version provides a home page, which contains links to courses, subjects and instructors page
Each page show the information for all members.

- Github: https://github.com/wxxiao33/pa_rails.git

- Heroku: https://cryptic-plains-02329.herokuapp.com/

* Ruby version = 2.6.5

* Database creation

  The database contains three tables, courses, subjects and instructors. Each table has columns specified by the data source. Some of the columns are not existing in the json file, I still create them in the table, in case we need them later. But they are not shown on the webpages

  A Part table is create to represent the many to many relation between courses and subjects. An enrollment table is create to represent many to many relationship between user and courses

* Database initialization

  The data is extracted from 3 JSON files, each of them contains an array of hashes. And each hash is a data entree. The json file is stored in ./datafile

* Services

  This app provides information for courses, subjects and instructors for logged in users. All vistors need to sign up and login first to view any content.

  The home page contains links to view all courses, subjects and instructors. And all enrolled courses for logged in user will be display in the homepage.

  There is a search form containing a dropdown menu and a text field in the header. All search information need to be enter here. Each row in the search result contains a details button and an enroll button. Users can use the enroll buttoAn to select courses. A validation is added to make sure a user cannot enroll the same course twice. The search is case insensitive.

  Dropping a course is also implemented. Dropping can be done by using the "Drop" button on the homepage.

- Deployment instructions

  Push the repo on to heroku, along with the database seeded by db/seed.rb
