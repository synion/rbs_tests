# frozen_string_literal: true

module Graphiti
  class RolesController < ApiController
    def index
      roles = RoleResource.all(params)
      respond_with(roles)
    end
  end
end
