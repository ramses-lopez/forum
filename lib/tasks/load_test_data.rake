# frozen_string_literal: true

namespace :db do
  desc 'Loads fake data used for development'
  task load_test_data: :environment do
    Organisation.all.destroy_all
    User.all.destroy_all

    3.times { FactoryBot.create(:user) }
    2.times { FactoryBot.create(:thread_empty) }
    2.times { FactoryBot.create(:thread_with_posts) }

    puts 'Test data loaded'
    puts " - User: #{User.first.email}"
    puts 'All passwords are 123456748'
    puts ''
  end
end
