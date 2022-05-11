# frozen_string_literal: true

module Graphiti
  class RoleResource < BaseResource
    self.model = Role
    primary_endpoint '/roles'

    attribute :name, :string
    attribute :movie_id, :integer
    attribute :actor_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime

    belongs_to :movie
    belongs_to :actor
  end
end
