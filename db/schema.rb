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

ActiveRecord::Schema[7.1].define(version: 2023_12_28_041202) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "industry"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "amount"
    t.date "contribution_date"
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_contributions_on_event_id"
    t.index ["user_id"], name: "index_contributions_on_user_id"
  end

  create_table "event_partnerships", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "partnership_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_partnerships_on_event_id"
    t.index ["partnership_id"], name: "index_event_partnerships_on_partnership_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "event_date"
    t.string "location"
    t.integer "capacity"
    t.decimal "budget"
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_events_on_company_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.text "feedback_text"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_feedbacks_on_event_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "partnerships", force: :cascade do |t|
    t.string "name"
    t.string "service_category"
    t.string "phone"
    t.decimal "discountRate"
    t.text "contractDetails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "amount"
    t.date "payment_date"
    t.string "payment_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "role"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.date "vote_date"
    t.string "venue_preference"
    t.string "activity_preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_votes_on_event_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "contributions", "events"
  add_foreign_key "contributions", "users"
  add_foreign_key "event_partnerships", "events"
  add_foreign_key "event_partnerships", "partnerships"
  add_foreign_key "events", "companies"
  add_foreign_key "feedbacks", "events"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "payments", "users"
  add_foreign_key "votes", "events"
  add_foreign_key "votes", "users"
end
