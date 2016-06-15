require 'faker'
FactoryGirl.define do
  factory :blog do |f|
    f.title {Faker::Lorem.word}
    f.description {Faker::Lorem.sentence}
  end

  # factory :blog do |f|
  #   f.title {Faker::Lorem.word}
  #   f.description {Faker::Lorem.sentence}
  # end
end