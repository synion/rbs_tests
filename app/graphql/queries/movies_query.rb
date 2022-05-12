# frozen_string_literal: true

module Queries
  class MoviesQuery < BaseQuery
    description 'List all movies'

    type [Types::MovieType], null: false

    def resolve
      ::Movie.all
    end
  end
end
