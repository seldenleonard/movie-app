class Movie < ApplicationRecord
  
  # validates :title, presence: true
  # validates :year, length: {is: 4}
  # validates :plot, length: {minimum: 10}
  # validates :director, length: {maximum: 20}
  # validates :english, inclusion: {in: [true, false]}
  # validates :english, exclusion: {in: [nil]}

  has_many :actors
  has_many :movie_genres

  has_many :genres, through: :movie_genres
  # belongs_to :genres, through: :movie_genres

  # def genre_names
  #   genre_names: movie.genres.map do |genre|
  #   render {
  #     genre_name: genre
  #   }
  #   end
  # end

end