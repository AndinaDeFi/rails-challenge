FactoryBot.define do
  factory :favorite_cryptocurrency do
    user
    cryptocurrency { create(:cryptocurrency, favorites_count: 1) }
  end
end
