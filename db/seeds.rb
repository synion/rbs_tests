# frozen_string_literal: true

# rubocop:disable Style/MixinUsage
include FactoryBot::Syntax::Methods
# rubocop:enable Style/MixinUsage

puts 'Started: creating Countries'
5.times { create(:country) }
puts 'Finished: creating Countries'

puts 'Started: creating Movies'
5.times { create(:movie, country: Country.find(1)) }
7.times { create(:movie, country: Country.find(2)) }
10.times { create(:movie, country: Country.find(3)) }
9.times { create(:movie, country: Country.find(4)) }
8.times { create(:movie, country: Country.find(5)) }
puts 'Finished: creating Movies'

puts 'Starting: creating Actors'
20.times { create(:actor, country: Country.find(1)) }
10.times { create(:actor, country: Country.find(2)) }
15.times { create(:actor, country: Country.find(3)) }
8.times { create(:actor, country: Country.find(4)) }
3.times { create(:actor, country: Country.find(5)) }
puts 'Finished: creating Actors'

puts 'Starting: creating Roles'
Movie.ids.each do |movie_id|
  Actor.ids.sample(rand(10..Actor.count)).each do |actor_id|
    create(:role, actor_id:, movie_id:)
  end
end
puts 'Finished: creating Roles'

puts 'Starting: creating Categories'
10.times { create(:category) }
puts 'Finished: creating Categories'
