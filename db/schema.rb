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

ActiveRecord::Schema[7.0].define(version: 2023_02_13_190929) do
  create_table "bar_crawl_reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "bar_crawl_id", null: false
    t.float "star_rating"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_crawl_id"], name: "index_bar_crawl_reviews_on_bar_crawl_id"
    t.index ["user_id"], name: "index_bar_crawl_reviews_on_user_id"
  end

  create_table "bar_crawls", force: :cascade do |t|
    t.string "bar_crawl_name"
    t.string "bar_crawl_bars_id"
    t.integer "user_id", null: false
    t.boolean "public_private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bar_crawls_on_user_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "category"
    t.string "price"
    t.integer "closing_time"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crawl_event_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "crawl_event_id", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crawl_event_id"], name: "index_crawl_event_comments_on_crawl_event_id"
    t.index ["user_id"], name: "index_crawl_event_comments_on_user_id"
  end

  create_table "crawl_events", force: :cascade do |t|
    t.integer "bar_crawl_id", null: false
    t.integer "user_id", null: false
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_crawl_id"], name: "index_crawl_events_on_bar_crawl_id"
    t.index ["user_id"], name: "index_crawl_events_on_user_id"
  end

  create_table "friendship_tables", force: :cascade do |t|
    t.integer "user_1_id"
    t.integer "user_2_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pending_invites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "crawl_event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crawl_event_id"], name: "index_pending_invites_on_crawl_event_id"
    t.index ["user_id"], name: "index_pending_invites_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "star_rating"
    t.text "content"
    t.integer "bar_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_reviews_on_bar_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "real_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_at_crawl_events", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "crawl_event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crawl_event_id"], name: "index_users_at_crawl_events_on_crawl_event_id"
    t.index ["user_id"], name: "index_users_at_crawl_events_on_user_id"
  end

  add_foreign_key "bar_crawl_reviews", "bar_crawls"
  add_foreign_key "bar_crawl_reviews", "users"
  add_foreign_key "bar_crawls", "users"
  add_foreign_key "crawl_event_comments", "crawl_events"
  add_foreign_key "crawl_event_comments", "users"
  add_foreign_key "crawl_events", "bar_crawls"
  add_foreign_key "crawl_events", "users"
  add_foreign_key "pending_invites", "crawl_events"
  add_foreign_key "pending_invites", "users"
  add_foreign_key "reviews", "bars"
  add_foreign_key "reviews", "users"
  add_foreign_key "users_at_crawl_events", "crawl_events"
  add_foreign_key "users_at_crawl_events", "users"
end
