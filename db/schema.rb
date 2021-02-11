ActiveRecord::Schema.define(version: 2021_02_11_232128) do

  create_table "bids", force: :cascade do |t|
    t.integer "quote"
    t.integer "contract_id", null: false
    t.integer "general_contractor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_bids_on_contract_id"
    t.index ["general_contractor_id"], name: "index_bids_on_general_contractor_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "terms"
    t.string "title"
    t.integer "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_contracts_on_owner_id"
  end

  create_table "general_contractors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub_bids", force: :cascade do |t|
    t.integer "quote"
    t.integer "sub_contract_id", null: false
    t.integer "subcontractor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_contract_id"], name: "index_sub_bids_on_sub_contract_id"
    t.index ["subcontractor_id"], name: "index_sub_bids_on_subcontractor_id"
  end

  create_table "sub_contracts", force: :cascade do |t|
    t.string "terms"
    t.integer "general_contractor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["general_contractor_id"], name: "index_sub_contracts_on_general_contractor_id"
  end

  create_table "subcontractors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bids", "contracts"
  add_foreign_key "bids", "general_contractors"
  add_foreign_key "contracts", "owners"
  add_foreign_key "sub_bids", "sub_contracts"
  add_foreign_key "sub_bids", "subcontractors"
  add_foreign_key "sub_contracts", "general_contractors"
end
