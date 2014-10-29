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

ActiveRecord::Schema.define(version: 20141029220125) do

  create_table "comments", force: true do |t|
    t.string   "comments"
    t.string   "upvotes"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["student_id"], name: "index_comments_on_student_id"

  create_table "controlgroups", force: true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member"
  end

  add_index "controlgroups", ["student_id"], name: "index_controlgroups_on_student_id"

  create_table "experiments", force: true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member"
  end

  add_index "experiments", ["student_id"], name: "index_experiments_on_student_id"

  create_table "forums", force: true do |t|
    t.string   "total"
    t.string   "web_app_arch_ii"
    t.string   "general_discussion"
    t.string   "study_groups"
    t.string   "lectures"
    t.string   "assignments"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forums", ["student_id"], name: "index_forums_on_student_id"

  create_table "googles", force: true do |t|
    t.string   "member"
    t.string   "email"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "googles", ["student_id"], name: "index_googles_on_student_id"

  create_table "m1s", force: true do |t|
    t.string   "one"
    t.string   "two"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "m1s", ["quiz_id"], name: "index_m1s_on_quiz_id"

  create_table "m2s", force: true do |t|
    t.string   "one"
    t.string   "two"
    t.string   "three"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "m2s", ["quiz_id"], name: "index_m2s_on_quiz_id"

  create_table "m3s", force: true do |t|
    t.string   "one"
    t.string   "two"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "m3s", ["quiz_id"], name: "index_m3s_on_quiz_id"

  create_table "m4s", force: true do |t|
    t.string   "one"
    t.string   "two"
    t.string   "three"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "m4s", ["quiz_id"], name: "index_m4s_on_quiz_id"

  create_table "m5s", force: true do |t|
    t.string   "one"
    t.string   "two"
    t.string   "three"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "m5s", ["quiz_id"], name: "index_m5s_on_quiz_id"

  create_table "m6s", force: true do |t|
    t.string   "one"
    t.string   "two"
    t.string   "three"
    t.string   "four"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "m6s", ["quiz_id"], name: "index_m6s_on_quiz_id"

  create_table "posts", force: true do |t|
    t.string   "posts"
    t.string   "upvotes"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["student_id"], name: "index_posts_on_student_id"

  create_table "programs", force: true do |t|
    t.string   "one"
    t.string   "two"
    t.string   "three"
    t.string   "four"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programs", ["student_id"], name: "index_programs_on_student_id"

  create_table "quizzes", force: true do |t|
    t.string   "survey"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quizzes", ["student_id"], name: "index_quizzes_on_student_id"

  create_table "reminders", force: true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member"
  end

  add_index "reminders", ["student_id"], name: "index_reminders_on_student_id"

  create_table "students", force: true do |t|
    t.string   "cid"
    t.string   "grade"
    t.string   "result"
    t.string   "sigtrack"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
