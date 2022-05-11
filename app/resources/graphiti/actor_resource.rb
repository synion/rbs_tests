# frozen_string_literal: true

module Graphiti
  class ActorResource < BaseResource
    self.model = Actor
    primary_endpoint '/actors'

    attribute :first_name, :string
    attribute :last_name, :string
    attribute :birthdate, :date
    attribute :country_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime

    has_many :roles
    many_to_many :movies
  end
end
