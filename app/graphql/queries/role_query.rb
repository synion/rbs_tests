# frozen_string_literal: true

module Queries
  class RoleQuery < BaseQuery
    description 'Find a role by ID'

    argument :id, ID, required: true

    type Types::RoleType, null: false

    def resolve(id:)
      ::Role.find(id)
    end
  end
end
