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

ActiveRecord::Schema.define(version: 20200909220105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "year"
    t.string "location"
  end

  create_table "museum_paintings", force: :cascade do |t|
    t.bigint "museum_id"
    t.bigint "painting_id"
    t.index ["museum_id"], name: "index_museum_paintings_on_museum_id"
    t.index ["painting_id"], name: "index_museum_paintings_on_painting_id"
  end

  create_table "museums", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "slogan"
  end

  create_table "paintings", force: :cascade do |t|
    t.bigint "artist_id"
    t.string "name"
    t.string "description"
    t.string "medium"
    t.string "color_palette"
    t.string "image"
    t.index ["artist_id"], name: "index_paintings_on_artist_id"
  end

  add_foreign_key "museum_paintings", "museums"
  add_foreign_key "museum_paintings", "paintings"
  add_foreign_key "paintings", "artists"
end
