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

ActiveRecord::Schema[8.0].define(version: 2024_11_14_080723) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.integer "doctor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_clients_on_doctor_id"
  end

  create_table "days", force: :cascade do |t|
    t.integer "diet_id", null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id"], name: "index_days_on_diet_id"
  end

  create_table "diets", force: :cascade do |t|
    t.integer "client_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.string "goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_diets_on_client_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "specialization"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer "meal_id", null: false
    t.string "name"
    t.float "quantity"
    t.string "unit"
    t.integer "calories"
    t.float "protein"
    t.float "carbohydrates"
    t.float "fat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_foods_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "day_id", null: false
    t.string "meal_type"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_meals_on_day_id"
  end

  add_foreign_key "clients", "doctors"
  add_foreign_key "days", "diets"
  add_foreign_key "diets", "clients"
  add_foreign_key "foods", "meals"
  add_foreign_key "meals", "days"
end
