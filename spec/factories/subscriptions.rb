FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.variety }
    price  { rand(10..100) }
    frequency { rand(2..6) }
    status { 0 }

    customer
    tea
  end
end
