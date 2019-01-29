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

ActiveRecord::Schema.define(version: 20150516200811) do

  create_table "airlines", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arrivals", force: :cascade do |t|
    t.integer  "flight_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
    t.integer  "gate"
    t.index ["flight_id"], name: "index_arrivals_on_flight_id"
  end

  create_table "departures", force: :cascade do |t|
    t.integer  "flight_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
    t.integer  "gate"
    t.index ["flight_id"], name: "index_departures_on_flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "airline_id"
    t.string   "number",     limit: 10
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["airline_id"], name: "index_flights_on_airline_id"
  end

end
