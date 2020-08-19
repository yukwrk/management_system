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

ActiveRecord::Schema.define(version: 2020_08_19_132132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "constructions", force: :cascade do |t|
    t.string "construction_name"
    t.string "person"
    t.bigint "total_cost"
    t.bigint "charge"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "partner_name"
    t.bigint "monthly_total_cost"
    t.bigint "total_material_cost"
    t.bigint "total_labor_cost"
    t.bigint "total_subcontract_cost"
    t.bigint "total_site_overhead_expenses"
  end

  create_table "details", force: :cascade do |t|
    t.string "detail_name"
    t.integer "tax_rate"
    t.integer "tax_class"
    t.bigint "material_cost", default: 0, null: false
    t.bigint "labor_cost", default: 0, null: false
    t.bigint "subcontract_cost", default: 0, null: false
    t.bigint "site_overhead_expenses", default: 0, null: false
    t.string "corresponding_account"
    t.string "account_name"
    t.date "construction_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "construction_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_id", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
