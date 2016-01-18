# Movie Rating App
- This app was created to play around with Devise, CanCan, and the use of [repond_to format.js {}](http://guides.rubyonrails.org/working_with_javascript_in_rails.html) through Ruby on Rails. The idea is to have an admin user that can rate movies they had watched, and allow other users to view (no login required) and comment (login required).

## Steps to create app:
1. Ensure you have ruby installed and rails gem installed.
1. `rails new app_name -d postgresql` where app_name is what you would like to name your app.
  - default database is sqlite3 if none specified
1. Maintain a killer README.* to document your process or explain how to run your app.
1. Set up a [git repo](http://kbroman.org/github_tutorial/pages/init.html) if desired.
1. Set up a [heroku app](https://devcenter.heroku.com/articles/creating-apps) if desired.
1. Use devise for authentication
  - add `gem devise` to *Gemfile*
  - run `bundle install`
  - follow the remaining setup steps from [Devise's docs](https://github.com/plataformatec/devise) or notes seen after you run `rails g devise:install`. The instructions by [Rails Girls](http://guides.railsgirls.com/devise/) are especially useful for those using Bootstrap.
1. 
1.

