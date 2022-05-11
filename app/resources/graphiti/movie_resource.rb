# frozen_string_literal: true

module Graphiti
  class MovieResource < BaseResource
    self.model = Movie
    primary_endpoint '/movies'

    attribute :title, :string
    attribute :description, :string
    attribute :premiere_date, :date
    attribute :country_id, :integer
    attribute :duration_in_minutes, :integer
    attribute :rate, :big_decimal
    attribute :number_of_votes, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime

    has_many :roles
    belongs_to :country
    many_to_many :actors
  end
end
