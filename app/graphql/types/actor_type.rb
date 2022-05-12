# frozen_string_literal: true

module Types
  class ActorType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :birthdate, GraphQL::Types::ISO8601Date, null: false
    field :country_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :roles, [Types::RoleType], null: false
  end
end
