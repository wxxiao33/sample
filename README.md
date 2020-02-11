# README

This is the first part of pa rails, a course select website.
This version provides a home page, which contains links to courses, subjects and instructors page
Each page show the information for all members.

- Github: https://github.com/wxxiao33/sample.git

- Heroku: https://cryptic-plains-02329.herokuapp.com/

* Ruby version = 2.6.5

* Database creation

  The database contains three tables, courses, subjects and instructors. Each table has columns specified by the data source. Some of the columns are not existing in the json file, I still create them in the table, in case we need them later. But they are not shown on the webpages

* Database initialization

  The data is extracted from 3 JSON files, each of them contains an array of hashes. And each hash is a data entree. The json file is stored in ./datafile

* Services

  For now this app only provides information for courses, subjects and instructors

* Deployment instructions

  Push the repo on to heroku, along with the database seeded by db/seed.rb
