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

ActiveRecord::Schema.define(version: 2019_12_04_163332) do

  create_table "spell_lists", force: :cascade do |t|
    t.integer "spell_id"
    t.string "title"
    t.index ["spell_id"], name: "index_spell_lists_on_spell_id"
  end

  create_table "spell_lists_spells", id: false, force: :cascade do |t|
    t.integer "spell_list_id"
    t.integer "spell_id"
    t.index ["spell_id"], name: "index_spell_lists_spells_on_spell_id"
    t.index ["spell_list_id"], name: "index_spell_lists_spells_on_spell_list_id"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.string "range"
    t.string "school"
    t.string "casting_time"
    t.string "duration"
    t.string "description_short"
    t.text "description_long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
