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

ActiveRecord::Schema.define(version: 20160614160235) do

  create_table "blue_print_items", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "code"
    t.integer  "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blue_print_items", ["shop_id"], name: "index_blue_print_items_on_shop_id"

  create_table "carts", force: :cascade do |t|
    t.decimal  "principal_amount", precision: 16, scale: 2, null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "trolley_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "trolley_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "items", ["trolley_id"], name: "index_items_on_trolley_id"

  create_table "merchants", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "merchants", ["name"], name: "index_merchants_on_name", unique: true

  create_table "orders", force: :cascade do |t|
    t.integer  "merchant_id",       null: false
    t.string   "order_number",      null: false
    t.datetime "confirmed_at",      null: false
    t.datetime "shipped_at"
    t.integer  "unshipped_cart_id", null: false
    t.integer  "shipped_cart_id",   null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "orders", ["merchant_id"], name: "index_orders_on_merchant_id"
  add_index "orders", ["shipped_cart_id"], name: "index_orders_on_shipped_cart_id"
  add_index "orders", ["unshipped_cart_id"], name: "index_orders_on_unshipped_cart_id"

  create_table "shoppers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trolleys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "shopper_id"
  end

end
