FactoryBot.define do
  factory :invoice_item do
    invoice_id { 1 }
    price_partial_id { 1 }
    amount { "MyString" }
    total_price { 1.5 }
    item_text { "MyText" }
  end
end
