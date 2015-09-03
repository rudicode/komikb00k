FactoryGirl.define do
  factory :page do |f|
    f.title { Faker::Lorem.sentence }
    f.caption { Faker::Lorem.sentence }
    f.image_url { Faker::Avatar.image }
  end
end
