# frozen_string_literal: true

FactoryBot.define do
  factory :role do
    name { Faker::Fantasy::Tolkien.character }
    movie { create(:movie) }
    actor { create(:actor) }
  end
end
