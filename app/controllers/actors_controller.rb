# frozen_string_literal: true

class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    # @movies = Movies.all
    @actors = Actor.where(age: params[:age]) if params[:age]
  end

  def new
    @actor = Actor.new
  end

  def create
    actor = Actor.new(actor_params)
    actor.save
    redirect_to '/actors'
  end

  private

  def actor_params
    params.require(:actor).permit(:name, :age, :nationality, :image_url)
  end
end
