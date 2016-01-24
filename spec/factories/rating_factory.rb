FactoryGirl.define do
  factory :rating do
    association :user
    association :movie

    trait :draft do
      draft 't'
    end

    trait :published do
      draft 'f'
      content { Faker::Lorem.paragraph }
      stars 2.5
    end

    factory :draft_rating, traits: [:draft]
    factory :published_rating, traits: [:published]
  end
end
