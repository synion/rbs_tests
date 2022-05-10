# frozen_string_literal: true

FactoryBot.define do
  factory :actor do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    birthdate { Faker::Date.between(from: 100.years.ago, to: 1.day.ago) }
    country { create(:country) }
  end
end
