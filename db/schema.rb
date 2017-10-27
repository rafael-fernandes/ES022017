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

ActiveRecord::Schema.define(version: 20171026204034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodios", force: :cascade do |t|
    t.string   "nome"
    t.integer  "numero"
    t.date     "data_lancamento"
    t.integer  "temporada_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["temporada_id"], name: "index_episodios_on_temporada_id", using: :btree
  end

  create_table "serie_acompanhadas", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.integer  "progressao"
    t.integer  "serie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["serie_id"], name: "index_serie_acompanhadas_on_serie_id", using: :btree
    t.index ["user_id"], name: "index_serie_acompanhadas_on_user_id", using: :btree
  end

  create_table "series", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "temporadas", force: :cascade do |t|
    t.integer  "serie_id"
    t.string   "nome"
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["serie_id"], name: "index_temporadas_on_serie_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nome"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
