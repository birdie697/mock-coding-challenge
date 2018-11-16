# READMEå

How to set up this app

1.  $ gem install rails
2.  $ rails new mock-coding-challenge --database=postgresql --skip-turbolinks --skip-test-unit
3.  $ cd mock-coding-challenge
4.  $ gem install httparty
5.  $ gem install nokogiri
6.  $ bundle install
7.  $ bundle exec rake db:create
8.  $ bundle exec rails generate migration create_repos
9.  $ bundle exec rake db:migrate && bundle exec rake db:rollback && bundle exec rake db:migrate
10. $ bundle exec rails generate migration create_contributors
11. $ bundle exec rake db:migrate && bundle exec rake db:rollback && bundle exec rake db:migrate
12. $ rails runner lib/create_seeds.rb
13. $ bundle exec rake db:seed
14. $ bundle exec rails server --binding=0.0.0.0
15. $ http://localhost:3000/api/v1/repos

To run Part 1
$ rails runner lib/crawler.rb
