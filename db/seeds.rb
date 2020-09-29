# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
  # actor.save

  # actor = Actor.new(first_name: "Russell", last_name: "Brand", known_for: "Get Him to The Greek")
  # actor.save

  # actor = Actor.create(first_name: "Joe", last_name: "Peschi", known_for: "Goodfellas")

# Movie.create(title: "Once Upon a Time in Hollywood", year: "2019", plot:"I couldnt tell you, I didnt see it.")

# Movie.create(title: "The Blues Brothers", year: "1990", plot: "They'll never get caught. Their on a mission from God.")

# movie = Movie.new(title: "The Sound of Music", year: "1980", plot: "A music teacher teaches kids music during WWII.")
# movie.save

MovieGenre.create(genre_id: 1, movie_id: 2)
MovieGenre.create(genre_id: 1, movie_id: 3)
MovieGenre.create(genre_id: 1, movie_id: 7)
MovieGenre.create(genre_id: 1, movie_id: 19)
MovieGenre.create(genre_id: 2, movie_id: 3)
MovieGenre.create(genre_id: 2, movie_id: 4)
MovieGenre.create(genre_id: 2, movie_id: 5)
MovieGenre.create(genre_id: 2, movie_id: 6)
MovieGenre.create(genre_id: 2, movie_id: 7)
MovieGenre.create(genre_id: 2, movie_id: 18)
MovieGenre.create(genre_id: 2, movie_id: 20)
MovieGenre.create(genre_id: 2, movie_id: 23)
MovieGenre.create(genre_id: 3, movie_id: 3)
MovieGenre.create(genre_id: 3, movie_id: 4)
MovieGenre.create(genre_id: 3, movie_id: 5)
MovieGenre.create(genre_id: 3, movie_id: 6)
MovieGenre.create(genre_id: 3, movie_id: 18)
MovieGenre.create(genre_id: 3, movie_id: 22)
MovieGenre.create(genre_id: 4, movie_id: 1)