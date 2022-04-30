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

ActiveRecord::Schema.define(version: 2022_04_30_211132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendings", force: :cascade do |t|
    t.date "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attendings_students", force: :cascade do |t|
    t.bigint "attending_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attending_id"], name: "index_attendings_students_on_attending_id"
    t.index ["student_id"], name: "index_attendings_students_on_student_id"
  end

  create_table "doctor_visits", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.text "disease"
    t.integer "fee"
    t.date "dateofvisit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_doctor_visits_on_doctor_id"
    t.index ["patient_id"], name: "index_doctor_visits_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "Specialty"
    t.text "address"
    t.integer "phone"
    t.boolean "isactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name"
    t.text "composition"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memorizations", force: :cascade do |t|
    t.string "name"
    t.integer "page"
    t.integer "part"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memorizations_students", force: :cascade do |t|
    t.bigint "memorization_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memorization_id"], name: "index_memorizations_students_on_memorization_id"
    t.index ["student_id"], name: "index_memorizations_students_on_student_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "overview"
    t.string "poster"
    t.date "relese"
    t.integer "revenue"
    t.integer "runtime"
    t.integer "budget"
    t.string "language"
    t.integer "vote"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_orders_on_movie_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "insurancenumber"
    t.string "name"
    t.integer "quota"
    t.integer "discountrate"
    t.integer "docotrvisit"
    t.date "paionstartdate"
    t.date "paionenddate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pharmacists", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.integer "phone"
    t.boolean "isactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prescripations", force: :cascade do |t|
    t.bigint "pharmacist_id", null: false
    t.bigint "patient_id", null: false
    t.bigint "drug_id", null: false
    t.date "dateofpresc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drug_id"], name: "index_prescripations_on_drug_id"
    t.index ["patient_id"], name: "index_prescripations_on_patient_id"
    t.index ["pharmacist_id"], name: "index_prescripations_on_pharmacist_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "coment"
    t.bigint "movie_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "studentclasses", force: :cascade do |t|
    t.string "name"
    t.bigint "students_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "teacher_id"
    t.index ["students_id"], name: "index_studentclasses_on_students_id"
    t.index ["teacher_id"], name: "index_studentclasses_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "school_class"
    t.integer "mobile_phone"
    t.integer "line_phone"
    t.integer "attendings_point", default: 0
    t.integer "memorizations_point", default: 0
    t.integer "toltal_point", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "studentclass_id"
    t.index ["studentclass_id"], name: "index_students_on_studentclass_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.bigint "studentclasses_id"
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
    t.index ["studentclasses_id"], name: "index_teachers_on_studentclasses_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attendings_students", "attendings"
  add_foreign_key "attendings_students", "students"
  add_foreign_key "doctor_visits", "doctors"
  add_foreign_key "doctor_visits", "patients"
  add_foreign_key "memorizations_students", "memorizations"
  add_foreign_key "memorizations_students", "students"
  add_foreign_key "orders", "movies"
  add_foreign_key "orders", "users"
  add_foreign_key "prescripations", "drugs"
  add_foreign_key "prescripations", "patients"
  add_foreign_key "prescripations", "pharmacists"
  add_foreign_key "reviews", "movies"
  add_foreign_key "reviews", "users"
  add_foreign_key "studentclasses", "students", column: "students_id"
  add_foreign_key "studentclasses", "teachers"
  add_foreign_key "students", "studentclasses"
  add_foreign_key "teachers", "studentclasses", column: "studentclasses_id"
end
