class Api::MoviesController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.json.jb"
  end

  # def show
  #   @movie = Movie.all.where("english = ?", "true")
  #   render "show.json.jb"
  # end

  def new
    @movie = Movie.new({
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    })
    @movie.save
    render "show.json.jb"
  end

  def edit
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    render "show.json.jb"
    @movie.save
  end

  def create
    @movie = Movie.create({
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    })
    if @movie.save # Happy Path
      render "show.json.jb"
    else # Sad Path
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity # same as using 'status: 422'
    end
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    render "show.json.jb"
    @movie.save
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "You have successfully deleted the file"}
  end

end