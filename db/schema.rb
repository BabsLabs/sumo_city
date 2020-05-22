# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_22_164743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stables", force: :cascade do |t|
    t.string "title"
    t.string "ichimon"
    t.string "founded"
    t.string "address"
    t.string "address_jp"
    t.string "phone"
    t.string "closest_stations"
    t.string "website"
    t.string "hexcolor"
    t.string "description"
    t.float "lon"
    t.float "lat"
    t.string "other_info"
  end

  create_table "sumos", force: :cascade do |t|
    t.string "name"
    t.string "heya"
    t.string "full_name"
    t.string "ring_name"
    t.string "rank"
    t.string "date_of_birth"
    t.string "year_of_birth"
    t.string "place_of_birth"
    t.string "height"
    t.string "weight"
    t.string "favorite_techniques"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "stable_id", null: false
    t.index ["stable_id"], name: "index_sumos_on_stable_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "english_name"
    t.string "japanese_name"
    t.string "definition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "sumos", "stables"
end
