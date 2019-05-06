# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: 'actors#index'

  get '/actors', to: 'actors#index'
  get '/actors/new', to: 'actors#new'
  post '/actors', to: 'actors#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
