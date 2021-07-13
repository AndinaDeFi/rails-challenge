FactoryBot.define do
  factory :cryptocurrency do
    name { "MyString" }
    symbol { "MyString" }
    pair { 1 }
    price { 1.5 }
    market_cap { 1 }
  end
end
