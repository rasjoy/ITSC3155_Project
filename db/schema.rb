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

ActiveRecord::Schema.define(version: 20170419161134) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "job_id"
    t.integer  "race_id"
    t.integer  "hp"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "cantrip"
    t.index ["job_id"], name: "index_characters_on_job_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.integer  "startingHP"
    t.string   "hitDice"
    t.string   "primaryAbility"
    t.string   "savingThrow1"
    t.string   "savingThrow2"
    t.text     "armorPref"
    t.text     "weaponPref"
    t.integer  "profBonus"
    t.string   "skills"
    t.string   "startingEquip"
    t.integer  "cantrip"
    t.integer  "spellSlots"
    t.text     "spells"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "modifiers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.string   "abilityScore"
    t.integer  "maxAge"
    t.integer  "weight"
    t.string   "alignment"
    t.string   "size"
    t.integer  "speed"
    t.string   "language1"
    t.string   "language2"
    t.string   "language3"
    t.boolean  "darkVision"
    t.text     "weaponProf"
    t.text     "prof"
    t.text     "extraAbility1"
    t.text     "extraAbility2"
    t.text     "extraAbility3"
    t.text     "extraAbility4"
    t.text     "extraAbility5"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
