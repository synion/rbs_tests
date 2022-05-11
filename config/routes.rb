# frozen_string_literal: true

Rails.application.routes.draw do
  scope path: Graphiti::BaseResource.endpoint_namespace, defaults: { format: :jsonapi } do
    resources :actors, controller: 'graphiti/actors'
    resources :countries, controller: 'graphiti/countries'
    resources :movies, controller: 'graphiti/movies'
    resources :roles, controller: 'graphiti/roles'
  end
end
