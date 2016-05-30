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

ActiveRecord::Schema.define(version: 20160527203652) do

  create_table "fleets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "fleet_name"
    t.string   "fc_name"
    t.string   "doctrin"
    t.string   "details"
    t.string   "duration"
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "fleet_id"
    t.string   "eve_charid"
    t.string   "eve_corpid"
    t.string   "eve_allianceid"
    t.string   "eve_shiptypeid"
    t.string   "eve_solarsystemid"
    t.string   "eve_stationid"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "participations", ["fleet_id", "eve_charid"], name: "index_participations_on_fleet_id_and_eve_charid", unique: true

end
