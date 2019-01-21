require 'faker'

i = 0
10.times do 
  Invoice.create(implementation_date: Date.today - i, 
                  customer_id: rand(1..2), 
                  issuer_id: rand(1..2), 
                  reference: Faker::Name.name, 
                  billed: rand(0..1) == 0, 
                  work_order: Faker::Invoice.reference,
                  project: Faker::Number.number(10),
                  product_id: rand(1..2) )

  Issuer.create(name: Faker::Name.name,
                business_area: Faker::Company.industry,
                unit: Faker::Commerce.department(1),
                phone_number: Faker::PhoneNumber.cell_phone,
                email: Faker::Internet.email,
                active: rand(0..1) == 0)
                
  Customer.create(name: Faker::Company.name,
                  department: Faker::Commerce.department(1),
                  org_number: Faker::Company.swedish_organisation_number,
                  address: Faker::Address.street_address,
                  postal_number: Faker::Address.zip,
                  city: "#{Faker::Address.city_prefix} #{Faker::Address.city_suffix.capitalize}",
                  active: rand(0..1) == 0)

  Product.create( name: Faker::Commerce.product_name,
                  business_area: Faker::Company.industry,
                  invoice_type: "Engångsavgift",
                  account: Faker::Business.credit_card_number,
                  vat: rand(0..1) == 0,
                  active: rand(0..1) == 0    
    )
  
  unitArray = ["st", "timme"]
  PricePartial.create(name: Faker::Job.field,
                      adjustable: rand(0..1) == 0,
                      standard_text: Faker::Lorem.sentence,
                      active: rand(0..1) == 0,
                      price: Faker::Number.number(5),
                      unit: unitArray[rand(0..1)] )

  InvoiceItem.create( invoice_id: rand(1..10),
                      price_partial_id: rand(1..10),
                      amount: rand(1..5),
                      total_price: Faker::Number.number(6),
                      item_text: Faker::Lorem.sentence)

end


