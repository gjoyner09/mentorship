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

# This schema is the sum result of all of the migrations that I have generated. Each migration tells the rails app how to update the schema, and the schema file is a file that shows the result. It contains all the tables in the database, the data they store, data types and more. The schema file is not to be edited.
ActiveRecord::Schema.define(version: 2021_03_11_043744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # This table was automatically created with the setup of ActiveStorage. It is used to handle stored images.
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    # The t.index lines demonstrate a relationship between entities
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  # This table was automatically created with the setup of ActiveStorage. It is used to handle stored images.
  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  # This table was automatically created with the setup of ActiveStorage. It is used to handle stored images.
  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  # This table is used to store all countries that the user can choose from when making a profile. Each profile will have one country, and each country can have between zero and many profiles. This one-to-many relationship is detailed at the bottom of this file.
  create_table "countries", force: :cascade do |t|
    t.string "country_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # This table is used to store all genders that the user can choose from when making a profile. Each profile will have one gender, and each gender can have between zero and many profiles. This one-to-many relationship is detailed at the bottom of this file.
  create_table "genders", force: :cascade do |t|
    t.string "gender_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # This table is used to store all gender identities that the user can choose from when making a profile. Each profile will have one identity, and each identity can have between zero and many profiles. This one-to-many relationship is detailed at the bottom of this file.
  create_table "identities", force: :cascade do |t|
    t.string "identity_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # This table contains all mentor/mentee matches. Each mentor_id and mentee_id is linked to a user_id. While this is not explicity drawn out in the schema, it is ensured based on the logic in the profiles controller.
  create_table "matches", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "mentee_id"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # This table contains all messages sent between users. Each sender_id and receiver_id is linked to a user_id. While this is not explicity drawn out in the schema, it is ensured based on the logic in the profiles controller.
  create_table "messages", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.text "message"
    t.datetime "timestamp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # Profiles contain information about each mentor and mentee. As detailed below, they must have exactly one Country, Gender, Sexuality, Identity and User.
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
    # The t.index lines demonstrate the relationships between profiles and countries, genders, identities, sexualities and users
    t.index ["country_id"], name: "index_profiles_on_country_id"
    t.index ["gender_id"], name: "index_profiles_on_gender_id"
    t.index ["identity_id"], name: "index_profiles_on_identity_id"
    t.index ["sexuality_id"], name: "index_profiles_on_sexuality_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  # Requests are where a user can request another user as a mentor or mentee. This is detailed in this table, with sender_id and receiver_id linking to one user_id.
  create_table "requests", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sender_role"
    t.string "receiver_role"
  end

  # This table is used to store all sexualities that the user can choose from when making a profile. Each profile will have one sexuality, and each sexuality can have between zero and many profiles. This one-to-many relationship is detailed at the bottom of this file.
  create_table "sexualities", force: :cascade do |t|
    t.string "sexuality_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # This table was generated by Devise to store user data such as email and password.
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

  # These lines of code set up one-to-many relationships between ActiveStorage tables as well as between countries, genders, identities, sexualities and users with profiles.
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "profiles", "countries"
  add_foreign_key "profiles", "genders"
  add_foreign_key "profiles", "identities"
  add_foreign_key "profiles", "sexualities"
  add_foreign_key "profiles", "users"
end
