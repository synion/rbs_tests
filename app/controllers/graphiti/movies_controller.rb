# frozen_string_literal: true

module Graphiti
  class MoviesController < ApiController
    def index
      movies = MovieResource.all(params)
      respond_with(movies)
    end

    def show
      movie = MovieResource.find(params)
      respond_with(movie)
    end
  end
end
