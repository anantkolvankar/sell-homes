# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160115114724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agent_infos", force: :cascade do |t|
    t.string   "company"
    t.string   "company_logo"
    t.string   "website"
    t.string   "operational_since"
    t.text     "description"
    t.string   "title"
    t.text     "authorize_agent"
    t.integer  "agent_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "amenities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amenity_properties", force: :cascade do |t|
    t.integer  "amenity_id"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "balconies", force: :cascade do |t|
    t.integer  "property_id"
    t.integer  "length"
    t.integer  "breadth"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "balconies", ["property_id"], name: "index_balconies_on_property_id", using: :btree

  create_table "bath_rooms", force: :cascade do |t|
    t.integer  "property_id"
    t.integer  "length"
    t.integer  "breadth"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bath_rooms", ["property_id"], name: "index_bath_rooms_on_property_id", using: :btree

  create_table "bed_rooms", force: :cascade do |t|
    t.integer  "property_id"
    t.integer  "length"
    t.integer  "breadth"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bed_rooms", ["property_id"], name: "index_bed_rooms_on_property_id", using: :btree

  create_table "charges", force: :cascade do |t|
    t.integer  "property_id"
    t.integer  "expected_price"
    t.string   "price_type"
    t.boolean  "car_parking"
    t.boolean  "club_membership"
    t.integer  "token_amount"
    t.integer  "others"
    t.integer  "maintenance"
    t.string   "maintenance_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "charges", ["property_id"], name: "index_charges_on_property_id", using: :btree

  create_table "flooring_properties", force: :cascade do |t|
    t.integer  "flooring_id"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "floorings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "display_name"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.integer  "pincode"
    t.string   "region"
    t.string   "area"
    t.text     "address"
    t.integer  "user_id"
    t.integer  "property_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "location_id"
  end

  add_index "properties", ["property_type_id"], name: "index_properties_on_property_type_id", using: :btree
  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "property_images", force: :cascade do |t|
    t.string   "photo"
    t.string   "title"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "property_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specifications", force: :cascade do |t|
    t.string   "super_builtup"
    t.integer  "super_builtup_unit"
    t.string   "builtup"
    t.integer  "builtup_unit"
    t.string   "carpet"
    t.integer  "carpet_unit"
    t.string   "transaction_type"
    t.string   "possession_status"
    t.string   "construction_age"
    t.integer  "property_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "specifications", ["property_id"], name: "index_specifications_on_property_id", using: :btree

  create_table "units", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "type"
    t.string   "first_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "balconies", "properties"
  add_foreign_key "bath_rooms", "properties"
  add_foreign_key "bed_rooms", "properties"
  add_foreign_key "charges", "properties"
  add_foreign_key "properties", "property_types"
  add_foreign_key "properties", "users"
  add_foreign_key "specifications", "properties"
end
