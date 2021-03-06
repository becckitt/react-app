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

ActiveRecord::Schema.define(version: 2019_06_18_030455) do

  create_table "referrals", force: :cascade do |t|
    t.integer "referrer_id"
    t.integer "referred_id"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["referred_id"], name: "index_referrals_on_referred_id"
    t.index ["referrer_id"], name: "index_referrals_on_referrer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email"
    t.string "payment", default: "xxxx xxxx xxxx 4242"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "referral_code"
  end

end
