# frozen_string_literal: true

module Queries
  class RolesQuery < BaseQuery
    description 'List all roles'

    argument :ids, [ID], required: false
    argument :name_starts_with, String, required: false

    type [Types::RoleType], null: false

    def resolve(args = {})
      query = ::Role.all
      query = query.where(id: args[:ids]) if args[:ids]
      query = query.where('name like ?', "#{args[:name_starts_with]}%") if args[:name_starts_with]

      query
    end
  end
end
