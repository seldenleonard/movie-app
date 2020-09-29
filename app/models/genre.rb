class Genre < ApplicationRecord

  has_many :movie_genres
  # belongs_to :movie, through: :movie_genres

  has_many :movies, through: :movie_genres

end