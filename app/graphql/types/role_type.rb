# frozen_string_literal: true

module Types
  class RoleType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :movie_id, Integer, null: false
    field :actor_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :movie, Types::MovieType, null: false
    field :actor, Types::ActorType, null: false
  end
end
