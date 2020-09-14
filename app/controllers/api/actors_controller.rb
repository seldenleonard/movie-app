class Api::ActorsController < ApplicationController
  
  def single_actor_action
    @actor = Actor.find_by(id: 7)
    render "single_actor.json.jb"
  end

  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end

end