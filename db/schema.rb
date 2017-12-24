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

ActiveRecord::Schema.define(version: 2017_12_24_013500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_posts_on_topic_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "posts_count"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_topics_on_user_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "photo_url"
    t.string "crypted_password"
    t.string "password_salt"
    t.string "persistence_token"
    t.string "single_access_token"
    t.string "perishable_token"
    t.integer "login_count", default: 0, null: false
    t.integer "failed_login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string "current_login_ip"
    t.string "last_login_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["perishable_token"], name: "index_users_on_perishable_token", unique: true
    t.index ["persistence_token"], name: "index_users_on_persistence_token", unique: true
    t.index ["single_access_token"], name: "index_users_on_single_access_token", unique: true
  end

  add_foreign_key "posts", "topics"
  add_foreign_key "posts", "users"
  add_foreign_key "topics", "users"
end
