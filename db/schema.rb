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

ActiveRecord::Schema.define(version: 20160623143511) do

  create_table "alliances", force: :cascade do |t|
    t.string   "eve_allianceid"
    t.string   "eve_alliancename"
    t.string   "active"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "alliances", ["eve_allianceid"], name: "index_alliances_on_eve_allianceid", unique: true

  create_table "characters", force: :cascade do |t|
    t.string   "eve_charid"
    t.string   "eve_charname"
    t.string   "eve_corpid"
    t.string   "eve_allianceid"
    t.string   "active"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "characters", ["eve_charid"], name: "index_characters_on_eve_charid", unique: true

  create_table "corporations", force: :cascade do |t|
    t.string   "eve_corpid"
    t.string   "eve_corpname"
    t.string   "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "corporations", ["eve_corpid"], name: "index_corporations_on_eve_corpid", unique: true

  create_table "fleets", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "alliance_id"
    t.string   "name"
    t.string   "fc_name"
    t.text     "backup_fcs"
    t.text     "fleet_booster"
    t.text     "doctrin"
    t.text     "details"
    t.datetime "started_at"
    t.datetime "ended_at"
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "fleet_id"
    t.string   "eve_charid"
    t.string   "eve_charname"
    t.string   "eve_corpid"
    t.string   "eve_corpname"
    t.string   "eve_allianceid"
    t.string   "eve_alliancename"
    t.string   "eve_shiptypeid"
    t.string   "eve_shiptypename"
    t.string   "eve_solarsystemid"
    t.string   "eve_stationid"
    t.string   "eve_constellationid"
    t.string   "eve_constellationname"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "participations", ["fleet_id", "eve_charid"], name: "index_participations_on_fleet_id_and_eve_charid", unique: true

  create_table "users", force: :cascade do |t|
    t.string  "character_name"
    t.integer "character_id"
    t.string  "corporation_name"
    t.integer "corporation_id"
    t.string  "alliance_name"
    t.integer "alliance_id"
  end

end
