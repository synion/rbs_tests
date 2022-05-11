# frozen_string_literal: true

module Graphiti
  class CountriesController < ApiController
    def index
      countries = CountryResource.all(params)
      respond_with(countries)
    end

    def show
      country = CountryResource.find(params)
      respond_with(country)
    end
  end
end
