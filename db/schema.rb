# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_18_160446) do

  create_table "bids", force: :cascade do |t|
    t.string "title"
    t.integer "quote"
    t.integer "contract_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_bids_on_contract_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "terms"
    t.string "title"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "sub_bids", force: :cascade do |t|
    t.string "title"
    t.integer "quote"
    t.integer "sub_contract_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_contract_id"], name: "index_sub_bids_on_sub_contract_id"
    t.index ["user_id"], name: "index_sub_bids_on_user_id"
  end

  create_table "sub_contracts", force: :cascade do |t|
    t.string "title"
    t.string "terms"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sub_contracts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bids", "contracts"
  add_foreign_key "bids", "users"
  add_foreign_key "contracts", "users"
  add_foreign_key "sub_bids", "sub_contracts"
  add_foreign_key "sub_bids", "users"
  add_foreign_key "sub_contracts", "users"
end
