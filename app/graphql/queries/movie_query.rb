# frozen_string_literal: true

module Queries
  class MovieQuery < BaseQuery
    description 'Find a movie by ID'

    argument :id, ID, required: true

    type Types::MovieType, null: false

    def resolve(id:)
      ::Movie.find(id)
    end
  end
end
