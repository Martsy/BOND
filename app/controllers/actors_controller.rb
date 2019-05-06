# frozen_string_literal: true

class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
end
