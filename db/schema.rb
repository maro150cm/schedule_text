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

ActiveRecord::Schema.define(version: 20150521130813) do

  create_table "courses", force: :cascade do |t|
    t.string   "course_id"
    t.string   "course_name"
    t.integer  "learn_point"
    t.string   "teacher_name"
    t.integer  "partweek_id"
    t.integer  "partdate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "partdates", force: :cascade do |t|
    t.integer  "part_number"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "partweeks", force: :cascade do |t|
    t.integer  "day_number"
    t.string   "week_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
