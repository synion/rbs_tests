# frozen_string_literal: true

module Queries
  class CountryQuery < BaseQuery
    description 'Find a country by ID'

    argument :id, ID, required: true

    type Types::CountryType, null: false

    def resolve(id:)
      ::Country.find(id)
    end
  end
end
