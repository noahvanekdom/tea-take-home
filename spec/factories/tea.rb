FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    description  { Faker::Fantasy::Tolkien.poem }
    brew_time { rand(2..6)}
    temperature { rand(80..100) }
  end
end