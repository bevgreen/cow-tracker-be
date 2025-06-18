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

ActiveRecord::Schema[7.1].define(version: 2025_06_18_161355) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cow_lists", force: :cascade do |t|
    t.bigint "cow_id", null: false
    t.bigint "list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cow_id"], name: "index_cow_lists_on_cow_id"
    t.index ["list_id"], name: "index_cow_lists_on_list_id"
  end

  create_table "cows", force: :cascade do |t|
    t.string "ear_tag_number", null: false
    t.string "nickname"
    t.date "birthday"
    t.boolean "pregnant"
    t.date "due_date"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ear_tag_number"], name: "index_cows_on_ear_tag_number", unique: true
    t.index ["location_id"], name: "index_cows_on_location_id"
  end

  create_table "farms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_shares", force: :cascade do |t|
    t.bigint "list_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_list_shares_on_list_id"
    t.index ["user_id"], name: "index_list_shares_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.bigint "farm_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farm_id"], name: "index_locations_on_farm_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.bigint "farm_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farm_id"], name: "index_users_on_farm_id"
  end

  add_foreign_key "cow_lists", "cows"
  add_foreign_key "cow_lists", "lists"
  add_foreign_key "cows", "locations"
  add_foreign_key "list_shares", "lists"
  add_foreign_key "list_shares", "users"
  add_foreign_key "lists", "users"
  add_foreign_key "locations", "farms"
  add_foreign_key "users", "farms"
end
