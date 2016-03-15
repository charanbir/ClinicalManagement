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

ActiveRecord::Schema.define(version: 20160307100308) do

  create_table "site_studies", force: :cascade do |t|
    t.integer  "Site_id"
    t.integer  "Study_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "site_studies", ["Site_id"], name: "index_site_studies_on_Site_id"
  add_index "site_studies", ["Study_id"], name: "index_site_studies_on_Study_id"

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studies", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.boolean  "open_closed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_sites", force: :cascade do |t|
    t.integer  "User_id"
    t.integer  "Site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_sites", ["Site_id"], name: "index_user_sites_on_Site_id"
  add_index "user_sites", ["User_id"], name: "index_user_sites_on_User_id"

  create_table "user_studies", force: :cascade do |t|
    t.integer "User_id",               null: false
    t.integer "Study_id",              null: false
    t.date    "dob",                   null: false
    t.text    "gender",   default: "", null: false
    t.text    "address"
  end

  add_index "user_studies", ["User_id", "Study_id"], name: "sqlite_autoindex_user_studies_1", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
