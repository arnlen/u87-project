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

ActiveRecord::Schema.define(version: 20130718161707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "answers", force: true do |t|
    t.integer  "category_id"
    t.string   "sentence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "definition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conversations", force: true do |t|
    t.integer  "interlocutor_id"
    t.string   "ip"
    t.datetime "reviewed_at"
    t.hstore   "subjects"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interlocutors", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "last_ip"
    t.datetime "last_conversation_at"
    t.string   "first_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledges", force: true do |t|
    t.string   "word"
    t.string   "usage"
    t.datetime "validated_at"
    t.integer  "talk_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talks", force: true do |t|
    t.string   "speaker"
    t.string   "sentence"
    t.integer  "conversation_id"
    t.boolean  "question"
    t.boolean  "exclamation"
    t.boolean  "knowledge"
    t.string   "subject"
    t.string   "verb"
    t.string   "complement"
    t.string   "adjective"
    t.string   "time"
    t.string   "time_precision"
    t.string   "answer_template"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
