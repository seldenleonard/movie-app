class Api::MovieGenresController < ApplicationController

  before_action :authenticate_admin

  def create
    @movie_genre = MovieGenre.create(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
    if @movie_genre.save
      render json: { genre_id: params[:genre_id],
        movie_id: params[:movie_id] }
    else
      render json: { errors: @movie_genre.errors.full_messages }, status: :unprocessable_entity
    end
  end

end