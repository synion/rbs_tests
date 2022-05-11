# frozen_string_literal: true

module Graphiti
  class CountryResource < BaseResource
    self.model = Country
    primary_endpoint '/countries'

    attribute :name, :string

    has_many :movies
  end
end
