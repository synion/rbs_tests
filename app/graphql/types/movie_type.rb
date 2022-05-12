# frozen_string_literal: true

module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String
    field :premiere_date, GraphQL::Types::ISO8601Date
    field :country_id, Integer, null: false
    field :duration_in_minutes, Integer
    field :rate, Float
    field :number_of_votes, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :country, Types::CountryType, null: false
    field :roles, [Types::RoleType], null: false
  end
end
