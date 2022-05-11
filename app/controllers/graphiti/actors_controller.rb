# frozen_string_literal: true

module Graphiti
  class ActorsController < ApiController
    def index
      actors = ActorResource.all(params)
      respond_with(actors)
    end

    def show
      actor = ActorResource.find(params)
      respond_with(actor)
    end
  end
end
