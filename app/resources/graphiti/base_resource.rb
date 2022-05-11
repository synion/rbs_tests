# frozen_string_literal: true

module Graphiti
  class BaseResource < Graphiti::Resource
    self.abstract_class = true
    self.adapter = Adapters::ActiveRecord
    self.autolink = true
    self.base_url = ::Rails.application.routes.default_url_options[:host]
    self.endpoint_namespace = '/graphiti'

    # def self.model
    #   self.model = self.to_s[/Graphiti::(\w+)Resource/, 1].constantize
    #   puts "MODEL: #{self.model}"
    # end
  end
end
