FactoryBot.define do
  factory :invoice do
    implementation_date { "2019-01-15" }
    customer_id { 1 }
    reference { "MyString" }
    issuer_id { 1 }
    billed { false }
    work_order { 1 }
    project { 1 }
  end
end
