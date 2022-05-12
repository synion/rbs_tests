# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # field :movies, [Types::MovieType], null: false
    # def movies
    #   ::Movie.all
    # end
    field :actors, resolver: Queries::ActorsQuery
    field :actor, resolver: Queries::ActorQuery
    field :countries, resolver: Queries::CountriesQuery
    field :country, resolver: Queries::CountryQuery
    field :movies, resolver: Queries::MoviesQuery
    field :movie, resolver: Queries::MovieQuery
    field :roles, resolver: Queries::RolesQuery
    field :role, resolver: Queries::RoleQuery
  end
end
