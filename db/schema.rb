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

ActiveRecord::Schema.define(:version => 20131221205944) do

  create_table "musers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "musers", ["email"], :name => "index_musers_on_email", :unique => true
  add_index "musers", ["reset_password_token"], :name => "index_musers_on_reset_password_token", :unique => true

  create_table "purchases", :force => true do |t|
    t.string   "customer"
    t.string   "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "songs", :force => true do |t|
    t.string   "track"
    t.string   "artist"
    t.string   "year"
    t.string   "genre"
    t.string   "artURL"
    t.string   "ytURL"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "album"
    t.string   "user"
    t.string   "ytEmbed"
    t.string   "username"
    t.string   "rating"
  end

  create_table "tasklists", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tasklists", ["user_id"], :name => "index_tasklists_on_user_id"

  create_table "todos", :force => true do |t|
    t.string   "title"
    t.string   "priority"
    t.string   "description"
    t.boolean  "completed"
    t.integer  "tasklist_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "todos", ["tasklist_id"], :name => "index_todos_on_tasklist_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "favgenre"
    t.string   "favsong"
    t.string   "favartist"
    t.string   "favalbum"
    t.string   "favlyric"
    t.string   "favvideo"
    t.string   "favideoEmbed"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
