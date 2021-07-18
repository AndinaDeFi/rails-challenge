FactoryBot.define do
  factory :user do
    sequence :username do |n|
      "user#{n}"
    end

    sequence :email do |n|
      "user#{n}@mail.com"
    end

    password { '123456' }
  end
end
