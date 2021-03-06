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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130511193757) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.text     "map_html"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "buildings", :force => true do |t|
    t.string   "slug"
    t.string   "address"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "area_id"
    t.string   "human_readable_name"
  end

  create_table "fountains", :force => true do |t|
    t.integer  "building_id"
    t.integer  "floor"
    t.string   "loc_info"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "user_id"
    t.integer  "fountain_id"
    t.integer  "convenience"
    t.integer  "taste"
    t.integer  "atmosphere"
    t.text     "review_text"
    t.integer  "overall_quality"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "temperature"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
