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

ActiveRecord::Schema.define(version: 20171122214839) do

  create_table "admins", force: :cascade do |t|
    t.string "adm_password"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_admins_on_person_id", unique: true
  end

  create_table "coaches", force: :cascade do |t|
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_coaches_on_person_id", unique: true
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id", "sender_id"], name: "index_conversations_on_recipient_id_and_sender_id", unique: true
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "diet_composes", force: :cascade do |t|
    t.integer "quantity"
    t.time "hour"
    t.date "day"
    t.integer "food_id"
    t.integer "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id", "food_id"], name: "index_diet_composes_on_diet_id_and_food_id", unique: true
    t.index ["diet_id"], name: "index_diet_composes_on_diet_id"
    t.index ["food_id"], name: "index_diet_composes_on_food_id"
  end

  create_table "diets", force: :cascade do |t|
    t.text "name"
    t.integer "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_diets_on_coach_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name_disease"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name_exercise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name_food"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.boolean "accepted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id", "user_id"], name: "index_friendships_on_friend_id_and_user_id", unique: true
    t.index ["user_id", "friend_id"], name: "index_friendships_on_user_id_and_friend_id", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "person_id"
    t.integer "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["person_id"], name: "index_messages_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "restrictions", force: :cascade do |t|
    t.string "name_restriction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.integer "coach_id"
    t.string "name_speciality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id", "name_speciality"], name: "index_specialities_on_coach_id_and_name_speciality", unique: true
    t.index ["coach_id"], name: "index_specialities_on_coach_id"
  end

  create_table "user_diseases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "disease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_user_diseases_on_disease_id"
    t.index ["user_id", "disease_id"], name: "index_user_diseases_on_user_id_and_disease_id", unique: true
    t.index ["user_id"], name: "index_user_diseases_on_user_id"
  end

  create_table "user_do_workouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ended"
    t.integer "score"
    t.index ["user_id", "workout_id"], name: "index_user_do_workouts_on_user_id_and_workout_id", unique: true
    t.index ["user_id"], name: "index_user_do_workouts_on_user_id"
    t.index ["workout_id"], name: "index_user_do_workouts_on_workout_id"
  end

  create_table "user_eat_diets", force: :cascade do |t|
    t.date "exp_date"
    t.integer "finished"
    t.integer "user_id"
    t.integer "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id"], name: "index_user_eat_diets_on_diet_id"
    t.index ["user_id", "diet_id", "exp_date"], name: "index_user_eat_diets_on_user_id_and_diet_id_and_exp_date", unique: true
    t.index ["user_id"], name: "index_user_eat_diets_on_user_id"
  end

  create_table "user_measures", force: :cascade do |t|
    t.float "weight"
    t.float "height"
    t.float "neck"
    t.float "chest"
    t.float "leftbiceps"
    t.float "rightbiceps"
    t.float "waist"
    t.float "hips"
    t.float "leftthigh"
    t.float "rightthigh"
    t.float "leftcalve"
    t.float "rightcalve"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_measures_on_user_id"
  end

  create_table "user_requests", force: :cascade do |t|
    t.date "date"
    t.integer "option"
    t.integer "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_requests_on_user_id"
  end

  create_table "user_restrictions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restriction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restriction_id"], name: "index_user_restrictions_on_restriction_id"
    t.index ["user_id", "restriction_id"], name: "index_user_restrictions_on_user_id_and_restriction_id", unique: true
    t.index ["user_id"], name: "index_user_restrictions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "person_id"
    t.integer "level", default: 0
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar", default: "profile/default.png"
    t.string "character", default: "characters/avatar1.png"
    t.index ["person_id"], name: "index_users_on_person_id", unique: true
  end

  create_table "workout_composes", force: :cascade do |t|
    t.integer "set"
    t.integer "repetition"
    t.string "technique"
    t.integer "exercise_id"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_workout_composes_on_exercise_id"
    t.index ["workout_id", "exercise_id"], name: "index_workout_composes_on_workout_id_and_exercise_id", unique: true
    t.index ["workout_id"], name: "index_workout_composes_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.index ["coach_id"], name: "index_workouts_on_coach_id"
  end

end
