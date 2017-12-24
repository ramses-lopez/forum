# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :topic do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraphs([1..3].sample).join('\n') }
    user

    factory :populated_topic do
      after(:create) do |topic|
        create_list(:post, (1..10).to_a.sample, topic: topic)
      end
    end
  end
end
