# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { "tester" }
    sequence(:email) { |n| "tester#{n}@example.com" }
    salt { "asdasdastr4325234324sdfds" }
    password { "secret" }
    password_confirmation { "secret" }

    trait :activated do
      after(:create) do |user|
        user.activate!
      end
    end

    trait :inactivated do
      activation_state { "pending" }
    end

    trait :reject_to_receive do
      mail_notification { false }
    end

    trait :accept_to_receive do
      mail_notification { true }
    end
  end
end
