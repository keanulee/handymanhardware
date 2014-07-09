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

ActiveRecord::Schema.define(version: 20140708235012) do

  create_table "rentables", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.string   "location"
    t.integer  "quantity"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "hourly_rate"
  end

  create_table "rentables_transactions", id: false, force: true do |t|
    t.integer "rentable_id"
    t.integer "transaction_id"
  end

  create_table "transactions", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "delivered_at"
    t.datetime "returned_at"
    t.boolean  "cancelled"
    t.decimal  "hours_charged"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "email"
  end

end
