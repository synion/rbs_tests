# frozen_string_literal: true

# rubocop:disable Style/MixinUsage
include FactoryBot::Syntax::Methods
# rubocop:enable Style/MixinUsage

puts 'Started: creating Countries'
country = create(:country)
country2 = create(:country)
country3 = create(:country)
country4 = create(:country)
country5 = create(:country)
puts 'Finished: creating Countries'

puts 'Started: creating Movies'
create(:movie, country:)
create(:movie, country:)
create(:movie, country:)
create(:movie, country:)
create(:movie, country:)

create(:movie, country: country2)
create(:movie, country: country2)
create(:movie, country: country2)
create(:movie, country: country2)
create(:movie, country: country2)
create(:movie, country: country2)
create(:movie, country: country2)

create(:movie, country: country3)
create(:movie, country: country3)
create(:movie, country: country3)
create(:movie, country: country3)
create(:movie, country: country3)
create(:movie, country: country3)

create(:movie, country: country4)
create(:movie, country: country4)
create(:movie, country: country4)
create(:movie, country: country4)
create(:movie, country: country4)
create(:movie, country: country4)
create(:movie, country: country4)
create(:movie, country: country4)

create(:movie, country: country5)
create(:movie, country: country5)
create(:movie, country: country5)
puts 'Finished: creating Movies'
