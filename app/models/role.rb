# frozen_string_literal: true

class Role < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  validates :name, :movie_id, :actor_id, presence: true
end
