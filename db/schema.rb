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

ActiveRecord::Schema.define(version: 20151122153500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.string   "from"
    t.string   "email"
    t.text     "body"
    t.integer  "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["tutor_id"], name: "index_messages_on_tutor_id", using: :btree

  create_table "ratings", force: :cascade do |t|
    t.string   "review"
    t.integer  "pencils"
    t.string   "name_of_reviewer"
    t.integer  "tutor_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ratings", ["tutor_id"], name: "index_ratings_on_tutor_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "expertise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.integer  "tutor_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topics", ["subject_id"], name: "index_topics_on_subject_id", using: :btree
  add_index "topics", ["tutor_id"], name: "index_topics_on_tutor_id", using: :btree

  create_table "tutors", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.text     "bio"
    t.string   "picurl"
    t.integer  "rate"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

  add_index "tutors", ["username"], name: "index_tutors_on_username", unique: true, using: :btree

  add_foreign_key "messages", "tutors"
  add_foreign_key "ratings", "tutors"
  add_foreign_key "topics", "subjects"
  add_foreign_key "topics", "tutors"
end
