# frozen_string_literal: true

namespace :db do
  desc 'Loads fake data for development use'
  task load_test_data: :environment do
    Topic.all.destroy_all
    User.all.destroy_all

    1.times { FactoryBot.create(:populated_topic) }
    1.times { FactoryBot.create(:topic) }
    2.times { FactoryBot.create(:populated_topic) }

    puts 'Test data loaded'
    puts " - User: #{User.first.email}"
    puts 'All passwords are 123456748'
    puts ''
  end
end
