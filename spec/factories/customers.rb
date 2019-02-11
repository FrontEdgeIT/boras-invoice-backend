FactoryBot.define do
  factory :customer do
    name { "MyString" }
    department { "MyString" }
    org_number { "MyString" }
    personal_number { "MyString" }
    address { "MyString" }
    postal_number { 1 }
    city { "MyString" }
    active { false }
  end
end
