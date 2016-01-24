FactoryGirl.define do
  pw = Faker::Lorem.characters(8)

  factory :user do
    email { Faker::Internet.email }
    password pw
    password_confirmation pw

    factory :admin do
      admin true
    end
  end
end
