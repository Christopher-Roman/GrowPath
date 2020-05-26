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

ActiveRecord::Schema.define(version: 2020_05_26_163418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.string "entry_type"
    t.text "adhoc_notes"
    t.string "growth_phase"
    t.text "overall_health"
    t.float "water_ph"
    t.float "water_volume"
    t.boolean "runoff"
    t.string "runoff_amount"
    t.float "runoff_ppm"
    t.float "runoff_ph"
    t.string "ppm"
    t.string "nutrients_used"
    t.boolean "leaves_removed"
    t.boolean "flowers_removed"
    t.string "leaf_health"
    t.string "flower_health"
    t.boolean "pests"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "harvests", force: :cascade do |t|
    t.string "harvest_type"
    t.float "total_yield"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "plant_name"
    t.string "plant_type"
    t.boolean "flowering"
    t.string "state_of_growth"
    t.string "grow_medium"
    t.boolean "clone"
    t.date "planted"
    t.string "seed_supplier"
    t.float "plant_height"
    t.float "plant_width"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "garden_type"
    t.string "experience_level"
    t.boolean "notification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
