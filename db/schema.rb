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

ActiveRecord::Schema.define(version: 20160627172455) do

  create_table "alliances", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.integer  "alliance_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "alliances", ["alliance_id"], name: "index_alliances_on_alliance_id", unique: true

  create_table "characters", force: :cascade do |t|
    t.integer  "corporation_id"
    t.integer  "alliance_id"
    t.string   "name"
    t.integer  "character_id"
    t.string   "corporation_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "characters", ["character_id"], name: "index_characters_on_character_id", unique: true

  create_table "corporations", force: :cascade do |t|
    t.integer  "alliance_id"
    t.string   "name"
    t.string   "ticker"
    t.integer  "corporation_id"
    t.integer  "member_count"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "corporations", ["corporation_id"], name: "index_corporations_on_corporation_id", unique: true

  create_table "fleets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "alliance_id"
    t.string   "eve_fleet_id"
    t.text     "name"
    t.string   "fc_name"
    t.integer  "fc_id"
    t.string   "doctrin"
    t.string   "reason"
    t.text     "details"
    t.integer  "pilot_count"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "fleet_id"
    t.string   "character_name"
    t.integer  "character_id"
    t.string   "ship_name"
    t.integer  "ship_id"
    t.string   "solarsystem_name"
    t.integer  "solarsystem_id"
    t.string   "station_name"
    t.integer  "station_id"
    t.boolean  "fc"
    t.boolean  "wing_booster"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "participations", ["fleet_id", "character_id"], name: "index_participations_on_fleet_id_and_character_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "character_name"
    t.integer  "character_id"
    t.string   "corporation_name"
    t.integer  "corporation_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "users", ["character_id"], name: "index_users_on_character_id", unique: true

end
