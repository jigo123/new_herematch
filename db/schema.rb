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

ActiveRecord::Schema.define(:version => 20110308194904) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place_id"
    t.decimal  "lat"
    t.decimal  "lng"
    t.string   "category"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "url"
    t.string   "phone"
    t.string   "email"
    t.text     "description"
    t.integer  "organizer",         :default => 0
    t.string   "producer_name"
    t.integer  "creator_id"
    t.string   "industry"
  end

  create_table "locations", :force => true do |t|
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "query"
    t.string   "category"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "phone"
    t.string   "href"
    t.string   "postcode"
    t.string   "owner"
    t.string   "uuid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "lat"
    t.decimal  "lng"
    t.string   "category"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                     :default => "", :null => false
    t.string   "encrypted_password",         :limit => 128, :default => "", :null => false
    t.string   "password_salt",                             :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                             :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.integer  "subscribe_to_announcements",                :default => 0
    t.integer  "subscribe_to_events",                       :default => 0
    t.integer  "terms",                                     :default => 0
    t.integer  "profile_completed",                         :default => 0
    t.integer  "place_id"
    t.integer  "industry"
    t.integer  "industry_interested_1"
    t.integer  "industry_interested_2"
    t.integer  "industry_interested_3"
    t.integer  "event_id"
    t.string   "headline"
    t.text     "bio"
    t.string   "phone"
    t.string   "url"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "company"
    t.string   "title"
    t.string   "school"
    t.string   "graduation_year"
    t.string   "major"
    t.text     "interests"
    t.string   "hometown_city"
    t.string   "hometown_state"
    t.string   "location_city"
    t.string   "location_state"
    t.text     "groups"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["place_id"], :name => "index_users_on_place_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
