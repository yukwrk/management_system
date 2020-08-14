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

ActiveRecord::Schema.define(version: 2020_08_14_122550) do

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
  end

  create_table "details", force: :cascade do |t|
    t.integer "construction_id"
    t.string "detail_name"
    t.integer "tax_rate"
    t.integer "tax_class"
    t.bigint "material_cost"
    t.bigint "labor_cost"
    t.bigint "subcontract_cost"
    t.bigint "site_overhead_expenses"
    t.string "corresponding_account"
    t.string "account_name"
    t.date "construction_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
