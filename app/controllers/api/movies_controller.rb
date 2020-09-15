class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.json.jb"
  end

  def new
    @movie = Movie.new({
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    })
    @movie.save
    render "show.json.jb"
  end

  def edit
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    render "show.json.jb"
    @movie.save
  end

  def create
    @movie = Movie.create({
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    })
    render "show.json.jb"
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    render "show.json.jb"
    @movie.save
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: "You have successfully deleted the file"
  end

end