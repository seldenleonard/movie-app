class Api::MoviesController < ApplicationController

  def all_movies_action
    @movies = Movie.all
    render "all_movies_path.json.jb"
  end

  def single_movie_action
    @movie = Movie.find_by(id: 3)
    render "single_movie_path.json.jb"
  end

  def choose_movie_values_action
    @movie = Movie.where(title: "Searching for Sugar Man", year: "2012").limit(1)
    render "choose_movie_values_path.json.jb"
  end

end