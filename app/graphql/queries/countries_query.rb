# frozen_string_literal: true

module Queries
  class CountriesQuery < BaseQuery
    description 'List all countries'

    type [Types::CountryType], null: false

    def resolve
      ::Country.all
    end
  end
end
