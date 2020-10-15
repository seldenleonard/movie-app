Genre.create!([
  {name: "Comedy"},
  {name: "Action"},
  {name: "Thriller"},
  {name: "Documentary"}
])

Movie.create!([
  {title: "Searching for Sugar Man", year: "2012", plot: "It is about a poor musician living in Detroit who unknowlingly is being exploited and contibutes to a revolution.", director: nil, english: true},
  {title: "The Big Lebowski", year: "2010", plot: "The Dude abides.", director: nil, english: true},
  {title: "The Lobster", year: "2015", plot: "People turn into animals unless they find love.", director: nil, english: true},
  {title: "Reservoir Dogs", year: "2000", plot: "Bank robbers post-robbery have a wild turn of events.", director: nil, english: true},
  {title: "Gran Torino", year: "2004", plot: "An old man has war flashbacks when his new neighbors move in.", director: nil, english: true},
  {title: "Once Upon a Time in Hollywood", year: "2019", plot: "I couldnt tell you, I didnt see it.", director: nil, english: true},
  {title: "The Blues Brothers", year: "1990", plot: "They'll never get caught. Their on a mission from God.", director: nil, english: true},
  {title: "Fight Club", year: "2000", plot: "The first rule of fight club is...", director: nil, english: true},
  {title: "The Sound of Music", year: "1970", plot: "A music teacher teaches kids music during WWII.", director: "Wendy Johnson", english: true},
  {title: "Forgetting Sarah Marshall", year: "2006", plot: "A guy tries to forget his ex-girlfriend", director: "John Michaels", english: true},
  {title: "Fast 5", year: "2018", plot: "Driving fast cars", director: "Michael Jordan", english: true},
  {title: "Awake", year: "2012", plot: "Someone stays up all night", director: "Henry Smith", english: false},
  {title: "The Hurt Locker", year: "2004", plot: "Bombs get defused", director: "Austin Spencer", english: true}
])

Actor.create!([
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "Male", age: 20, movie_id: 4},
  {first_name: "Sarah", last_name: "Silverman", known_for: "Saving Silverman", gender: "Female", age: 45, movie_id: 8},
  {first_name: "Russell", last_name: "Brand", known_for: "Forgetting Sarah Marshall", gender: "Male", age: 33, movie_id: 10},
  {first_name: "Angelina", last_name: "Jolie", known_for: "Mr. and Mrs. Smith", gender: "Female", age: 30, movie_id: 5},
  {first_name: "John C.", last_name: "Reilly", known_for: "Stepbrothers", gender: "Male", age: 40, movie_id: 3},
  {first_name: "Aaron", last_name: "Kent", known_for: "Scary Movie", gender: "Male", age: 41, movie_id: 3},
  {first_name: "Elizabeth", last_name: "Smith", known_for: "Fight Club", gender: "Female", age: 85, movie_id: 8},
  {first_name: "Joe", last_name: "Peschi", known_for: "Goodfellas", gender: "Male", age: 43, movie_id: 7},
  {first_name: "John", last_name: "Belushi", known_for: "Blues Brothers", gender: "Male", age: 68, movie_id: 7},
  {first_name: "Dan", last_name: "Aykroyd", known_for: "Blues Brothers", gender: "Male", age: 70, movie_id: 7}
])

MovieGenre.create!([
  {genre_id: 1, movie_id: 2},
  {genre_id: 1, movie_id: 3},
  {genre_id: 1, movie_id: 7},
  {genre_id: 1, movie_id: 10},
  {genre_id: 2, movie_id: 3},
  {genre_id: 2, movie_id: 4},
  {genre_id: 2, movie_id: 5},
  {genre_id: 2, movie_id: 6},
  {genre_id: 2, movie_id: 7},
  {genre_id: 2, movie_id: 9},
  {genre_id: 2, movie_id: 11},
  {genre_id: 2, movie_id: 13},
  {genre_id: 3, movie_id: 3},
  {genre_id: 3, movie_id: 4},
  {genre_id: 3, movie_id: 5},
  {genre_id: 3, movie_id: 6},
  {genre_id: 3, movie_id: 9},
  {genre_id: 3, movie_id: 12},
  {genre_id: 4, movie_id: 1},
  {genre_id: 3, movie_id: 8},
  {genre_id: 1, movie_id: 1}
])
User.create!([
  {name: "Selden", email: "selden@gmail.com", password_digest: "$2a$12$Kx2H3prOI2bRvf3QQYaKqOz4ShZQbhGHWhOUx/76DFnDLB9wRajRi", admin: true},
  {name: "Alex", email: "alex@gmail.com", password_digest: "$2a$12$hED/zy6H66gHrHgvWD2pNenL.g14bIH0r510INqiLRY.vJhUHrL3W", admin: true},
  {name: "Ally", email: "ally@gmail.com", password_digest: "$2a$12$GjIqC3yqfgo/WqMb.LmDR.KPxf57Yn3c5IEUBBGUqjrFjQs9cWGGC", admin: false},
  {name: "Jordan", email: "jordan@gmail.com", password_digest: "$2a$12$hYZe8/zF4scuJN6flqi5eOPqQPwsah5OsHUOHDKtQd2U.vYD3w0LW", admin: false},
  {name: "Peter", email: "peter@gmail.com", password_digest: "$2a$12$xqpHCvx8IqIdZTH5/QGPuur3eOUJuz8uFO169oyB6zPIF/BvktdUK", admin: false},
  {name: "Susan", email: "susan@gmail.com", password_digest: "$2a$12$UWqgV9VNvhk/iYG81BzQYuQvcbANZod30tArC1EeTVDj4HwvtyBD6", admin: false},
  {name: "Eliza", email: "eliza@gmail.com", password_digest: "$2a$12$US4v4konoUgLgVshZAkjMujFvIbn57w6ndVAIG7Wtemivq/tHiyXC", admin: false},
  {name: "Rebecca", email: "rebecca@gmail.com", password_digest: "$2a$12$LnpIY4DGnWTSHeGunoZNLOZthKhrTNO5uu2pxKqsCC5kCCyl9wBua", admin: false},
  {name: "Zander", email: "zander@gmail.com", password_digest: "$2a$12$dJoipM2zLj0tP972QHLM6.q8ko93qv7JyPXtgVz720/udqrwWOTFi", admin: true}
])
