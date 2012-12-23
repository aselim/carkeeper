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

ActiveRecord::Schema.define(:version => 20121223220113) do

  create_table "cars", :force => true do |t|
    t.datetime "datein"
    t.string   "brand"
    t.string   "carmodel"
    t.string   "year"
    t.integer  "cc"
    t.boolean  "used"
    t.float    "km"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "password"
    t.string   "mobile"
    t.string   "tel"
    t.text     "address"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
