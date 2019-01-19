# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_19_131920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "org_number"
    t.string "personal_number"
    t.string "address"
    t.integer "postal_number"
    t.string "city"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoice_items", force: :cascade do |t|
    t.integer "invoice_id"
    t.integer "price_partial_id"
    t.string "amount"
    t.float "total_price"
    t.text "item_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date "implementation_date"
    t.integer "customer_id"
    t.string "reference"
    t.integer "issuer_id"
    t.boolean "billed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "work_order"
    t.string "project"
    t.integer "product_id"
  end

  create_table "issuers", force: :cascade do |t|
    t.string "name"
    t.string "business_area"
    t.string "unit"
    t.string "phone_number"
    t.string "email"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_partials", force: :cascade do |t|
    t.string "name"
    t.boolean "adjustable"
    t.text "standard_text"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.string "unit"
  end

  create_table "products", force: :cascade do |t|
    t.string "business_area"
    t.string "name"
    t.string "invoice_type"
    t.string "account"
    t.boolean "vat"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
