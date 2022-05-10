# frozen_string_literal: true

# rubocop:disable Style/MixinUsage
include FactoryBot::Syntax::Methods
# rubocop:enable Style/MixinUsage

puts 'Started: creating Countries'
create(:country)
create(:country)
create(:country)
create(:country)
create(:country)
puts 'Finished: creating Countries'
