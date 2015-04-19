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

ActiveRecord::Schema.define(version: 20150419005247) do

  create_table "properties", force: :cascade do |t|
    t.string   "address"
    t.string   "apartment"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "rooms"
    t.integer  "bathrooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "review"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "property_id"
    t.integer  "helpful_total"
  end

  add_index "reviews", ["property_id"], name: "index_reviews_on_property_id"

end
