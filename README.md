Instructions for setting up the project
-------------------------------------------
Ruby version: ruby '2.6.6'

Rails version: 6.0.3

Database: sqlite3


Steps

1. bundle install
2. yarn install
3. bundle exec rails db:drop db:migrate db:seed
4. bundle exec rails server -p 3002

For running the specs:
5. rspec spec

Please note: I have used the seed file for generating the data for Rooms table
