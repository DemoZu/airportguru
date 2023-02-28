# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_28_192918) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "iata_name"
    t.string "terminal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string "title"
    t.bigint "airport_id", null: false
    t.bigint "facility_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_facilities_on_airport_id"
    t.index ["facility_category_id"], name: "index_facilities_on_facility_category_id"
  end

  create_table "facility_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "flight_number"
    t.time "departure_time"
    t.string "flight_destination"
    t.string "flight_status"
    t.string "gate_number", default: "TBC", null: false
    t.time "gate_open_time"
    t.bigint "airport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_flights_on_airport_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flight_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_journeys_on_flight_id"
    t.index ["user_id"], name: "index_journeys_on_user_id"
  end

  create_table "meetup_categories", force: :cascade do |t|
    t.string "meetup_topic"
    t.string "meetup_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetups", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "meetup_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "airport_id"
    t.index ["meetup_category_id"], name: "index_meetups_on_meetup_category_id"
    t.index ["user_id"], name: "index_meetups_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.string "status"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.bigint "meetup_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["meetup_id"], name: "index_messages_on_meetup_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "tip_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "likes"
    t.bigint "user_id", null: false
    t.bigint "tip_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "airport_id"
    t.index ["tip_category_id"], name: "index_tips_on_tip_category_id"
    t.index ["user_id"], name: "index_tips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.string "photo"
    t.string "bio"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "facilities", "airports"
  add_foreign_key "facilities", "facility_categories"
  add_foreign_key "flights", "airports"
  add_foreign_key "journeys", "flights"
  add_foreign_key "journeys", "users"
  add_foreign_key "meetups", "meetup_categories"
  add_foreign_key "meetups", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "meetups"
  add_foreign_key "messages", "users"
  add_foreign_key "tips", "tip_categories"
  add_foreign_key "tips", "users"
end
