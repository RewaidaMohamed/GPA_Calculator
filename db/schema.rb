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

ActiveRecord::Schema.define(version: 20160719014223) do

  create_table "semesters", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "course1",    limit: 100
    t.string   "course2",    limit: 100
    t.string   "course3",    limit: 100
    t.string   "course4",    limit: 100
    t.string   "course5",    limit: 100
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "credit1",    limit: 4
    t.integer  "credit2",    limit: 4
    t.integer  "credit3",    limit: 4
    t.integer  "credit4",    limit: 4
    t.integer  "credit5",    limit: 4
    t.string   "grade1",     limit: 10
    t.string   "grade2",     limit: 10
    t.string   "grade3",     limit: 10
    t.string   "grade4",     limit: 10
    t.string   "grade5",     limit: 10
    t.float    "gpa_result", limit: 24
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name",       limit: 100, null: false
    t.string   "mail",            limit: 50,  null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

  add_index "users", ["mail"], name: "index_users_on_mail", unique: true, using: :btree

end
