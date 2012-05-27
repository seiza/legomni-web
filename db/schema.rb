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

ActiveRecord::Schema.define(:version => 20120527143411) do

  create_table "figures", :force => true do |t|
    t.integer  "series_id"
    t.integer  "number"
    t.string   "name"
    t.string   "url"
    t.string   "slogan"
    t.string   "description"
    t.integer  "strength"
    t.integer  "creativity"
    t.integer  "speed"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "series", :force => true do |t|
    t.integer  "number"
    t.string   "color"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "city1"
    t.string   "city2"
    t.string   "city3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
