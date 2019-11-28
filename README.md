# LibreForum

This a Ruby on Rails 5.2 app, created to serve as a simple demo app

## Video demo

https://www.youtube.com/watch?v=XgjSrHEGHyw

## Requirements

* Ruby 2.4+
* PostgreSQL Server 9+

## How to install

Assuming that you cover all requirements

1. Clone the git repo
```
git clone git@github.com:ramses-lopez/forum.git
```
1. Enter the newly created directory
```
cd forum
```
1. [optional] If you're using [rvm](link), use this command to create and use a proper gemset
```
rvm use 2.4@forum-app --create --auto-dotfiles
```
  1. Check that you're using the desired gemset with `rvm current`
1. Install all dependencies running
```
bundle install
```
1. The first time you run the app, you need to create the database:
```
rake db:setup
```
1. You're all set! run `rails s` to start the development server and go to `http://localhost:3000`

1. *[Optional]* You can run the `rake db:load_test_data` task to generate some dummy data.

## Next steps

* Rails 5.2 comes with the `webpacker` gem integrated, so you can use a SPA framework for the UI with Rails as a backend. All the required configuration is already done in this app, but the UI is not. So, next up, *ReactJS UI!*
* Deploy to Heroku, for demo convenience
* Search functionality
* User Notifications
