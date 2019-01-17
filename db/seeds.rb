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
end
