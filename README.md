# RottenPotatoes

RottenPotatoes is a Ruby on Rails application for managing a collection of movies. Users can view, add, edit, and delete movies, as well as sort the movie list by title, rating, or release date.

## Deployed Application

The application is deployed on Heroku:

https://arcane-peak-32052-22ff78e70a49.herokuapp.com/

## Features

- View all movies in a table
- Add new movies
- View movie details
- Edit existing movies
- Delete movies
- Sort movies by title, rating, and release date
- Sort in ascending or descending order
- Preserve the selected sorting option while navigating between pages
- Highlight the currently sorted column
- Seed the database with sample movie data

## Technologies Used

- Ruby 3.4.10
- Ruby on Rails 8.1.3.1
- SQLite3 for development and testing
- PostgreSQL for production
- Heroku for deployment

## Running the Application Locally

Install the required gems:

    bundle install

Set up the database:

    rails db:create
    rails db:migrate
    rails db:seed

Start the Rails server:

    rails server

Then open:

    http://localhost:3000

## Database

The application includes seed data in `db/seeds.rb`. The seed process uses `find_or_create_by!` to prevent duplicate movie records when the seed command is run multiple times.

To seed the database:

    rails db:seed

## Code Quality

RuboCop is used to check Ruby code style.

Run:

    bundle exec rubocop