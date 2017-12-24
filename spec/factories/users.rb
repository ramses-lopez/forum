# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  emails = %w[gmail outlook yahoo]

  factory :user do
    name { Faker::Name.name }
    email { "#{name.parameterize}@#{emails.sample}.com" }
    photo_url { Faker::Avatar.image(name.parameterize) }
    password '12345678'
    password_confirmation '12345678'
  end
end
