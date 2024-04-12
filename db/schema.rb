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

ActiveRecord::Schema[7.1].define(version: 2024_04_12_173751) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accountants", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classroom_courses", force: :cascade do |t|
    t.bigint "classroom_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_classroom_courses_on_classroom_id"
    t.index ["course_id"], name: "index_classroom_courses_on_course_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.string "detail"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_classrooms_on_section_id"
  end

  create_table "course_teachers", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "year_id"
    t.bigint "classroom_course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_course_id"], name: "index_course_teachers_on_classroom_course_id"
    t.index ["teacher_id"], name: "index_course_teachers_on_teacher_id"
    t.index ["year_id"], name: "index_course_teachers_on_year_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.float "credit"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "date_evaluations", force: :cascade do |t|
    t.date "date"
    t.float "maximum"
    t.bigint "classroom_course_id", null: false
    t.bigint "periode_id", null: false
    t.boolean "is_remote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_course_id"], name: "index_date_evaluations_on_classroom_course_id"
    t.index ["periode_id"], name: "index_date_evaluations_on_periode_id"
  end

  create_table "detail_paiement_classrooms", force: :cascade do |t|
    t.bigint "classroom_id"
    t.bigint "detail_paiement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_detail_paiement_classrooms_on_classroom_id"
    t.index ["detail_paiement_id"], name: "index_detail_paiement_classrooms_on_detail_paiement_id"
  end

  create_table "detail_paiements", force: :cascade do |t|
    t.string "frais_name"
    t.float "montant"
    t.date "end_date"
    t.text "description"
    t.bigint "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year_id"], name: "index_detail_paiements_on_year_id"
  end

  create_table "discipline_directors", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluates", force: :cascade do |t|
    t.float "point"
    t.bigint "date_evaluation_id", null: false
    t.bigint "promotion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date_evaluation_id"], name: "index_evaluates_on_date_evaluation_id"
    t.index ["promotion_id"], name: "index_evaluates_on_promotion_id"
  end

  create_table "events", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information", force: :cascade do |t|
    t.string "source"
    t.string "distination"
    t.text "content"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observation_disciplinaries", force: :cascade do |t|
    t.date "data"
    t.text "observation"
    t.bigint "discipline_director_id"
    t.bigint "promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discipline_director_id"], name: "index_observation_disciplinaries_on_discipline_director_id"
    t.index ["promotion_id"], name: "index_observation_disciplinaries_on_promotion_id"
  end

  create_table "paiements", force: :cascade do |t|
    t.float "montant"
    t.bigint "accountant_id"
    t.bigint "detail_paiement_classroom_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountant_id"], name: "index_paiements_on_accountant_id"
    t.index ["detail_paiement_classroom_id"], name: "index_paiements_on_detail_paiement_classroom_id"
    t.index ["student_id"], name: "index_paiements_on_student_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periodes", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.bigint "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year_id"], name: "index_periodes_on_year_id"
  end

  create_table "personels", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.string "role"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personels_on_user_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.bigint "year_id"
    t.bigint "classroom_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_promotions_on_classroom_id"
    t.index ["student_id"], name: "index_promotions_on_student_id"
    t.index ["year_id"], name: "index_promotions_on_year_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date "date"
    t.integer "first_H"
    t.integer "second_H"
    t.integer "third_H"
    t.integer "fourth_H"
    t.integer "fifth_H"
    t.integer "sixth_H"
    t.integer "seven_H"
    t.bigint "classroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_schedules_on_classroom_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.bigint "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_students_on_parent_id"
  end

  create_table "study_directors", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "years", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "classroom_courses", "classrooms"
  add_foreign_key "classroom_courses", "courses"
  add_foreign_key "classrooms", "sections"
  add_foreign_key "course_teachers", "classroom_courses"
  add_foreign_key "course_teachers", "teachers"
  add_foreign_key "course_teachers", "years"
  add_foreign_key "date_evaluations", "classroom_courses"
  add_foreign_key "date_evaluations", "periodes"
  add_foreign_key "detail_paiement_classrooms", "classrooms"
  add_foreign_key "detail_paiement_classrooms", "detail_paiements"
  add_foreign_key "detail_paiements", "years"
  add_foreign_key "evaluates", "date_evaluations"
  add_foreign_key "evaluates", "promotions"
  add_foreign_key "observation_disciplinaries", "discipline_directors"
  add_foreign_key "observation_disciplinaries", "promotions"
  add_foreign_key "paiements", "accountants"
  add_foreign_key "paiements", "detail_paiement_classrooms"
  add_foreign_key "paiements", "students"
  add_foreign_key "periodes", "years"
  add_foreign_key "personels", "users"
  add_foreign_key "promotions", "classrooms"
  add_foreign_key "promotions", "students"
  add_foreign_key "promotions", "years"
  add_foreign_key "schedules", "classrooms"
  add_foreign_key "students", "parents"
  add_foreign_key "teachers", "users"
end
