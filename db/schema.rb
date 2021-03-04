# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_04_010242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "country_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "identities", force: :cascade do |t|
    t.string "identity_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.text "reason_for_interest", null: false
    t.text "interests", null: false
    t.text "discussion_topics", null: false
    t.bigint "country_id", null: false
    t.bigint "gender_id", null: false
    t.bigint "sexuality_id", null: false
    t.bigint "identity_id", null: false
    t.boolean "mentor", default: false, null: false
    t.boolean "mentee", default: false, null: false
    t.boolean "mentor_public", default: false, null: false
    t.boolean "mentee_public", default: false, null: false
    t.boolean "mentor_availability", default: false, null: false
    t.boolean "mentee_availability", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.boolean "created", default: false
    t.index ["country_id"], name: "index_profiles_on_country_id"
    t.index ["gender_id"], name: "index_profiles_on_gender_id"
    t.index ["identity_id"], name: "index_profiles_on_identity_id"
    t.index ["sexuality_id"], name: "index_profiles_on_sexuality_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sexualities", force: :cascade do |t|
    t.string "sexuality_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "profiles", "countries"
  add_foreign_key "profiles", "genders"
  add_foreign_key "profiles", "identities"
  add_foreign_key "profiles", "sexualities"
  add_foreign_key "profiles", "users"
end
