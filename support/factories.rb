# encoding: utf-8

require "factory_girl"

FactoryGirl.define do
  factory :product do
    title "Mochila"
    price 20.10

    association :seller, strategy: :build
  end

  factory :seller do
    name "Alceu"
    email "alceu.dispor@email.com"
  end
end
