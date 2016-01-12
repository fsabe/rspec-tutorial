# encoding: utf-8

require "factory_girl"

FactoryGirl.define do
  factory :product do
    title "Mochila"
    price 20.10

    association :seller, strategy: :build

    after(:build) do |product|
      product.seller.products << product
    end
  end

  factory :seller do
    name "Alceu"
    email "alceu.dispor@email.com"

    trait :with_product do
      after(:build) do |seller|
        build(:product, seller: seller)
      end
    end
  end
end
