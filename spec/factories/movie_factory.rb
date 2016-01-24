FactoryGirl.define do
  factory :movie do
    title { Faker::Book.title }
    release_date 5.days.ago
    watched_day Time.now
    association :director 
    # image File.new(Rails.root + 'spec/fixtures/admit_one.jpg')
  end
end
