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

ActiveRecord::Schema.define(version: 20140909065816) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_record2s", force: true do |t|
    t.integer  "user_id"
    t.integer  "coach_id"
    t.integer  "weekday_id"
    t.integer  "start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_record2s", ["coach_id"], name: "index_activity_record2s_on_coach_id"
  add_index "activity_record2s", ["user_id"], name: "index_activity_record2s_on_user_id"
  add_index "activity_record2s", ["weekday_id"], name: "index_activity_record2s_on_weekday_id"

  create_table "activity_record3s", force: true do |t|
    t.integer  "user_id"
    t.integer  "coach_id"
    t.integer  "weekday_id"
    t.integer  "start_time"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_record3s", ["activity_id"], name: "index_activity_record3s_on_activity_id"
  add_index "activity_record3s", ["coach_id"], name: "index_activity_record3s_on_coach_id"
  add_index "activity_record3s", ["user_id"], name: "index_activity_record3s_on_user_id"
  add_index "activity_record3s", ["weekday_id"], name: "index_activity_record3s_on_weekday_id"

  create_table "activity_records", force: true do |t|
    t.integer  "activity_id"
    t.string   "coach_id_integer"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weekday_id"
    t.integer  "start_time"
  end

  create_table "coaches", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "diets", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "weekday"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "weekdays", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
