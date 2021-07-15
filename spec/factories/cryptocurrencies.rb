FactoryBot.define do
  factory :cryptocurrency do
    sequence :name do |n|
      "Crypto#{n}"
    end
    sequence :symbol do |n|
      "cry#{n}"
    end
    pair { 0 }
    price { rand(1..50_000) }
    market_cap { price * 100 }
    total_volume { price / 2 }
  end
end
