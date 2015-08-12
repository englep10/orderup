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

ActiveRecord::Schema.define(version: 20150812211346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "order"
    t.integer  "lunch_id"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendees", ["lunch_id"], name: "index_attendees_on_lunch_id", using: :btree

  create_table "lunches", force: :cascade do |t|
    t.string   "group"
    t.string   "creditcard"
    t.integer  "user_id"
    t.string   "status"
    t.integer  "seating_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lunches", ["seating_id"], name: "index_lunches_on_seating_id", using: :btree
  add_index "lunches", ["user_id"], name: "index_lunches_on_user_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "menu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seatings", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "limit"
    t.datetime "time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "seatings", ["restaurant_id"], name: "index_seatings_on_restaurant_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "company"
    t.string   "email"
    t.string   "phonenumber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "attendees", "lunches"
  add_foreign_key "lunches", "seatings"
  add_foreign_key "lunches", "users"
  add_foreign_key "seatings", "restaurants"
end
