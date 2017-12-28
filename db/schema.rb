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

ActiveRecord::Schema.define(version: 20171228215805) do

  create_table "consults", force: :cascade do |t|
    t.string "diagnostic"
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pacient_id"
    t.integer "medic_id"
    t.index ["medic_id"], name: "index_consults_on_medic_id"
    t.index ["pacient_id"], name: "index_consults_on_pacient_id"
  end

  create_table "medics", force: :cascade do |t|
    t.string "nume"
    t.string "prenume"
    t.string "sectie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "telefon"
    t.string "email"
  end

  create_table "pacients", force: :cascade do |t|
    t.string "nume"
    t.string "prenume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "varsta"
    t.string "adresa"
    t.string "telefon"
    t.string "email"
  end

end
