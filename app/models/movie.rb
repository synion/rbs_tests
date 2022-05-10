# frozen_string_literal: true

class Movie < ApplicationRecord
  belongs_to :country

  validates :title, presence: true, uniqueness: true
  validates :country_id, presence: true
  validates :number_of_votes, numericality: { greater_than_or_equal_to: 0 }, if: :number_of_votes
  validates :duration_in_minutes, numericality: { greater_than_or_equal_to: 0 }, if: :duration_in_minutes
  validates :rate, numericality: { greater_than_or_equal_to: 0 }, if: :rate
end
