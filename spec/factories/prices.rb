FactoryBot.define do
  factory :price do
    price_partial_id { 1 }
    from_date { "2019-01-15" }
    to_date { "2019-01-15" }
    price { "" }
  end
end
