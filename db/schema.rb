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

ActiveRecord::Schema.define(version: 20180129060539) do

  create_table "amateur_league_rankings", force: :cascade do |t|
    t.date "date", null: false
    t.integer "ranking", null: false
    t.integer "users_id"
    t.integer "total_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_amateur_league_rankings_on_users_id"
  end

  create_table "daily_champions", force: :cascade do |t|
    t.integer "users_id"
    t.integer "point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_daily_champions_on_users_id"
  end

  create_table "grade_masters", force: :cascade do |t|
    t.string "name", null: false
    t.integer "needed_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grade_rankings", force: :cascade do |t|
    t.integer "users_id"
    t.integer "ranking", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_grade_rankings_on_users_id"
    t.index [nil], name: "index_grade_rankings_on_nick_name", unique: true
  end

  create_table "professional_league_rankings", force: :cascade do |t|
    t.date "date", null: false
    t.integer "ranking", null: false
    t.integer "users_id"
    t.integer "total_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_professional_league_rankings_on_users_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "user_score_id_1", null: false
    t.integer "user_score_id_2", null: false
    t.integer "user_score_id_3", null: false
    t.integer "user_score_id_4", null: false
    t.integer "penalty_point", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_advantage_points", force: :cascade do |t|
    t.date "date", null: false
    t.integer "users_id"
    t.integer "point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_user_advantage_points_on_users_id"
  end

  create_table "user_monthly_records", force: :cascade do |t|
    t.integer "users_id"
    t.float "ranking_point", null: false
    t.float "average_point", null: false
    t.float "average_point_when_top", null: false
    t.integer "match_count", null: false
    t.integer "top_count", null: false
    t.integer "second_count", null: false
    t.integer "third_count", null: false
    t.integer "fourth_count", null: false
    t.float "top_percent", null: false
    t.float "second_percent", null: false
    t.float "third_percent", null: false
    t.float "fourth_percent", null: false
    t.integer "current_points", null: false
    t.index ["users_id"], name: "index_user_monthly_records_on_users_id"
  end

  create_table "user_scores", force: :cascade do |t|
    t.integer "scores_id"
    t.integer "users_id"
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scores_id"], name: "index_user_scores_on_scores_id"
    t.index ["users_id"], name: "index_user_scores_on_users_id"
  end

  create_table "user_total_records", force: :cascade do |t|
    t.integer "users_id"
    t.float "ranking_point", null: false
    t.float "average_point", null: false
    t.float "average_point_when_top", null: false
    t.integer "match_count", null: false
    t.integer "top_count", null: false
    t.integer "second_count", null: false
    t.integer "third_count", null: false
    t.integer "fourth_count", null: false
    t.float "top_percent", null: false
    t.float "second_percent", null: false
    t.float "third_percent", null: false
    t.float "fourth_percent", null: false
    t.integer "real_points", null: false
    t.integer "current_points", null: false
    t.index ["users_id"], name: "index_user_total_records_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "octagon_id", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "nick_name", null: false
    t.boolean "professional", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nick_name"], name: "index_users_on_nick_name", unique: true
    t.index ["octagon_id"], name: "index_users_on_octagon_id", unique: true
  end

end
