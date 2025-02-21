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

ActiveRecord::Schema[8.0].define(version: 2025_02_21_151311) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "score_home"
    t.integer "score_away"
    t.text "description"
    t.date "date"
    t.bigint "team_away_id", null: false
    t.bigint "team_home_id", null: false
    t.bigint "day_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_games_on_day_id"
    t.index ["team_away_id"], name: "index_games_on_team_away_id"
    t.index ["team_home_id"], name: "index_games_on_team_home_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "logo"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "days"
  add_foreign_key "games", "teams", column: "team_away_id"
  add_foreign_key "games", "teams", column: "team_home_id"
end
