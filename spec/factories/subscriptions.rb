FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.variety }
    price  { rand(10..100) }
    frequency { rand(0..1) }
    status { 0 }

    customer
    tea
  end
end
