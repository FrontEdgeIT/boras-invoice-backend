FactoryBot.define do
  factory :product do
    business_area { "MyString" }
    name { "MyString" }
    invoice_type { "MyString" }
    account { "MyString" }
    vat { false }
    active { false }
  end
end
