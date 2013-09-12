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

ActiveRecord::Schema.define(:version => 20130912093104) do

  create_table "hostnames", :force => true do |t|
    t.string   "domain_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "said_at"
    t.text     "action"
    t.integer  "nick_id"
  end

  create_table "nick_hostnames", :force => true do |t|
    t.integer "nick_id",     :null => false
    t.integer "hostname_id", :null => false
  end

  create_table "nicks", :force => true do |t|
    t.text     "name"
    t.text     "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
