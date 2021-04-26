FactoryBot.define do
  factory :user do
    name { "Rafael De Luca" }
    sequence(:email) { |n| "rafael#{n}@rafaeldeluca.org" }
    password { "password" }
    password_confirmation { "password" }
  end
end
