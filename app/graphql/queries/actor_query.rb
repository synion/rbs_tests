# frozen_string_literal: true

module Queries
  class ActorQuery < BaseQuery
    description 'Find an actor by ID'

    argument :id, ID, required: true

    type Types::ActorType, null: false

    def resolve(id:)
      ::Actor.find(id)
    end
  end
end
