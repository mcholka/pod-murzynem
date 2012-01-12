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

ActiveRecord::Schema.define(:version => 20120112200331) do

  create_table "producents", :force => true do |t|
    t.integer  "id_number"
    t.string   "nazwa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefons", :force => true do |t|
    t.string   "model"
    t.integer  "producents_id"
    t.string   "ogolne"
    t.string   "konstrukcja"
    t.string   "siec"
    t.string   "rozmiar"
    t.string   "transmisja"
    t.string   "komunikacja"
    t.string   "wyswietlacz"
    t.string   "system"
    t.string   "pamiec"
    t.string   "aparat"
    t.string   "multimedia"
    t.string   "funckje"
    t.string   "zasilanie"
    t.string   "cena"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
