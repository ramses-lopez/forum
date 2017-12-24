# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :post do
    content { Faker::Lorem.paragraphs([1..3].sample).join('\n') }
    topic
    user
  end
end
