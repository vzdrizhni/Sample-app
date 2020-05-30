FactoryBot.define do
  factory :user do
    name { Faker::Games::WorldOfWarcraft.hero }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    password_confirmation { Faker::Internet.password }

    factory :follower do
      name { Faker::Games::WorldOfWarcraft.hero }
      email { Faker::Internet.email }
      password { Faker::Internet.password }
      password_confirmation { Faker::Internet.password }
    end
  end
end
