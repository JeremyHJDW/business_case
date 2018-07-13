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

ActiveRecord::Schema.define(version: 20180713140205) do

  create_table "business_cases", force: :cascade do |t|
    t.string "client_location"
    t.string "client_industry"
    t.string "client_size"
    t.string "user_expertise"
    t.text "client_problem"
    t.text "user_methodology"
    t.text "client_results"
    t.text "client_comments"
    t.text "user_link"
    t.integer "client_comment_status"
    t.string "title"
    t.string "client_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
