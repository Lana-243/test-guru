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

ActiveRecord::Schema.define(version: 2022_01_10_132351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "answer"
    t.boolean "correct"
    t.bigint "questions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["questions_id"], name: "index_answers_on_questions_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.bigint "tests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tests_id"], name: "index_questions_on_tests_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "title", null: false
    t.integer "level", default: 1
    t.bigint "categories_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categories_id"], name: "index_tests_on_categories_id"
    t.index ["users_id"], name: "index_tests_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "answers", "questions", column: "questions_id"
  add_foreign_key "questions", "tests", column: "tests_id"
  add_foreign_key "tests", "categories", column: "categories_id"
  add_foreign_key "tests", "users", column: "users_id"
end
