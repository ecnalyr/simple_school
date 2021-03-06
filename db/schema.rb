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

ActiveRecord::Schema.define(version: 20150130231340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.string   "name"
    t.integer  "classroom_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["classroom_id"], name: "index_assignments_on_classroom_id", using: :btree

  create_table "classrooms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classrooms_students", id: false, force: true do |t|
    t.integer "classroom_id"
    t.integer "student_id"
  end

  add_index "classrooms_students", ["classroom_id", "student_id"], name: "classrooms_students_index", unique: true, using: :btree

  create_table "homeworks", force: true do |t|
    t.text     "work"
    t.boolean  "submitted",     default: false
    t.integer  "assignment_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "homeworks", ["assignment_id"], name: "index_homeworks_on_assignment_id", using: :btree
  add_index "homeworks", ["student_id"], name: "index_homeworks_on_student_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
