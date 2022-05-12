# frozen_string_literal: true

module Queries
  class ActorsQuery < BaseQuery
    description 'List all actors'

    type [Types::ActorType], null: false

    def resolve
      ::Actors.all
    end
  end
end
