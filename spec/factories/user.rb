require 'faker'
FactoryGirl.define do
  factory :user do |f|
    f.email {Faker::Internet.email}
    f.password {Faker::Internet.password}
    f.name {Faker::Name.name}
  end
end