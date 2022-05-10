# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    title { Faker::Movie.unique.title }
    description { Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4) }
    premiere_date { Faker::Date.between(from: 20.years.ago, to: Date.today) }
    country { create(:country) }
    duration_in_minutes { rand(60..200) }
    rate { rand(100..1_000) / 100.0 }
    number_of_votes { rand(1..100_000) }
  end
end
