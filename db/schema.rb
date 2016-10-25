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

ActiveRecord::Schema.define(version: 20161023170241) do

  create_table "bus_drivers", force: :cascade do |t|
    t.integer  "busID"
    t.integer  "driverID"
    t.string   "shift"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bus_routes", force: :cascade do |t|
    t.integer  "busID"
    t.integer  "routeID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buses", force: :cascade do |t|
    t.integer  "busID"
    t.integer  "phoneNum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.integer  "driverID"
    t.string   "fName"
    t.string   "lName"
    t.string   "phoneNum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "LocationID"
    t.float    "coordinates_LA"
    t.float    "coordinates_LO"
    t.datetime "time"
    t.integer  "busID"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "routes", force: :cascade do |t|
    t.integer  "routeID"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stop_orders", force: :cascade do |t|
    t.integer  "routeID"
    t.integer  "stopID"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stops", force: :cascade do |t|
    t.integer  "stopID"
    t.string   "stopName"
    t.string   "coordinates_LA"
    t.string   "coordinates_LO"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
