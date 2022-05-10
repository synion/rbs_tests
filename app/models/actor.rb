# frozen_string_literal: true

class Actor < ApplicationRecord
  belongs_to :country

  validates :first_name, :last_name, :country_id, presence: true
  validates :birthdate, presence: true, comparison: { less_than: Date.today }
end
