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

ActiveRecord::Schema.define(version: 2019_02_07_141939) do

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
    t.float "unit_price"
    t.string "unit"
    t.float "vat"
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
    t.boolean "invoice_sent", default: false
    t.string "plant_id"
    t.string "plant_number"
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

  create_table "product_prices", force: :cascade do |t|
    t.integer "product_id"
    t.integer "price_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true, where: "([email] IS NOT NULL)"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, where: "([reset_password_token] IS NOT NULL)"
  end

end
