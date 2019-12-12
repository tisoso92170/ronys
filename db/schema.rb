# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_12_111440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tiers", force: :cascade do |t|
    t.string "name"
    t.string "alternate_name"
    t.string "prospect_customer"
    t.boolean "provider?"
    t.string "etat"
    t.string "code_customer"
    t.string "code_provider"
    t.text "adress"
    t.string "zip_code"
    t.string "city"
    t.string "country"
    t.string "department"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.string "num_siret"
    t.string "num_siren"
    t.string "num_ape"
    t.string "num_rcs"
    t.boolean "assuj_tva?"
    t.string "num_tva"
    t.string "third_party_type"
    t.string "employees"
    t.string "legale_entity_type"
    t.decimal "capital", precision: 10, scale: 2
    t.string "eco_terms"
    t.string "devise"
    t.string "commercial"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
