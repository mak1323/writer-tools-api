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

ActiveRecord::Schema.define(version: 20170824181542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adjectives", force: :cascade do |t|
    t.string "word"
    t.string "description"
  end

  create_table "backgrounds", force: :cascade do |t|
    t.text   "background"
    t.string "genre_type"
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "family_names", force: :cascade do |t|
    t.string "family_name"
  end

  create_table "favorites", force: :cascade do |t|
    t.string  "adjective"
    t.string  "noun"
    t.integer "user_id"
    t.string  "comment"
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "given_names", force: :cascade do |t|
    t.string "given_name"
  end

  create_table "nouns", force: :cascade do |t|
    t.string "word"
    t.string "theme"
  end

  create_table "saved_characters", force: :cascade do |t|
    t.string  "given_name"
    t.string  "family_name"
    t.text    "background"
    t.string  "comment"
    t.integer "user_id"
    t.string  "genre"
    t.index ["user_id"], name: "index_saved_characters_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "favorites", "users"
  add_foreign_key "saved_characters", "users"
end
