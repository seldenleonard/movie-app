class Api::ActorsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  # def index
  #   @actors = Actor.all
  #   render "index.json.jb"
  # end

  def index
    @actors = Actor.all.order(age: :desc)
  end

  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end

  # def new
  #   @actor = Actor.new({
  #       @actor.first_name => params[:first_name],
  #       @actor.last_name => params[:last_name],
  #       @actor.known_for => params[:known_for],
  #       @actor.gender => params[:gender],
  #       @actor.age => params[:age]
  #     })
  #   @actor.save
  #   render "show.json.jb"
  # end

  # def edit
  #   @actor = Actor.find(params[:id])
  #   @actor.first_name = params[:first_name] || @actor.first_name
  #   @actor.last_name = params[:last_name] || @actor.last_name
  #   @actor.known_for = params[:known_for] || @actor.known_for
  #   @actor.gender = params[:gender] || actor.gender
  #   @actor.age = params[:age] || actor.age
  #   @actor.save
  #   render "show.json.jb"
  # end

  def create
    @actor = Actor.create({
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    })
    if @actor.save # Happy Path
      render "show.json.jb"
    else # Sad Path
      render json: {mesage: @actor.errors.full_messages}, status: :unprocessable_entity # same as using 'status: 422'
    end
  end

  def update
    @actor = Actor.find(params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || actor.gender
    @actor.age = params[:age] || actor.age
    @actor.movie_id = params[:movie_id] || actor.movie_id
    @actor.save
    if @actor.save # Happy Path
      render "show.json.jb"
    else # Sad Path
      render json: {message: @actor.errors.full_messages}, status: :unprocessable_entity # same as using 'status: 422'
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    render json: {message: "The file has been successfully destroyed"}
  end

end