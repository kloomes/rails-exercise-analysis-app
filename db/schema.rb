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

ActiveRecord::Schema.define(version: 2020_04_19_154843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cardio_workouts", force: :cascade do |t|
    t.string "workout_type"
    t.date "date"
    t.time "time"
    t.string "training_type"
    t.integer "duration_hours"
    t.integer "duration_minutes"
    t.integer "duration_seconds"
    t.float "distance"
    t.float "avg_speed"
    t.float "max_speed"
    t.integer "avg_hr"
    t.integer "max_hr"
    t.integer "kcal"
    t.integer "ascent"
    t.integer "descent"
    t.integer "running_index"
    t.text "notes"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "avg_pace_minute"
    t.integer "avg_pace_seconds"
    t.integer "max_pace_minute"
    t.integer "max_pace_seconds"
    t.index ["user_id"], name: "index_cardio_workouts_on_user_id"
  end

  create_table "exercise_sets", force: :cascade do |t|
    t.float "weight"
    t.integer "reps"
    t.bigint "exercise_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exercise_id"], name: "index_exercise_sets_on_exercise_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.bigint "weights_workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["weights_workout_id"], name: "index_exercises_on_weights_workout_id"
  end

  create_table "stats", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.float "weight"
    t.float "body_fat"
    t.float "lean_mass"
    t.integer "bmi"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_stats_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.date "date_of_birth"
    t.integer "height"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weights_workouts", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.string "workout_type"
    t.integer "duration_hours"
    t.integer "duration_minutes"
    t.integer "duration_seconds"
    t.integer "avg_hr"
    t.integer "max_hr"
    t.integer "kcal"
    t.text "notes"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weights_workouts_on_user_id"
  end

  add_foreign_key "cardio_workouts", "users"
  add_foreign_key "exercise_sets", "exercises"
  add_foreign_key "exercises", "weights_workouts"
  add_foreign_key "stats", "users"
  add_foreign_key "weights_workouts", "users"
end
