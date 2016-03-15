A Ruby on Rails based webapp which allows users to participate in sites and enroll in studies.

Technologies used: Ruby 2.2.3, Rails 4.2.5, SQLite3

Steps to run:
unzip and enter the folder
bundle exec rake db:migrate
rails s
Go to http://localhost:3000/

Basic authentication using Devise gem : Admin sees everything, other users only see list of open studies for enrollment.

You can sign up for a new user or use the below credentials:

username: admin@gmail.com
password: adminpwd
