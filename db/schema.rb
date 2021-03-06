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

ActiveRecord::Schema.define(version: 20181025102752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.integer "client_validation_status", default: 0
    t.string "title"
    t.string "client_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "status", default: 0
    t.index ["user_id"], name: "index_business_cases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "last_name"
    t.string "first_name"
    t.string "company_name"
    t.string "staff_number"
    t.string "unique_identification_number"
    t.string "phone_number"
    t.string "user_expertise"
    t.string "address"
    t.string "zip_code"
    t.string "country"
    t.string "city"
    t.string "referent_mail"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "business_cases", "users"
end
