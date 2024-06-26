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

ActiveRecord::Schema[7.1].define(version: 2024_05_19_000044) do
  create_table "answers", force: :cascade do |t|
    t.integer "form_id"
    t.integer "template_question_id"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_answers_on_form_id"
    t.index ["template_question_id"], name: "index_answers_on_template_question_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "subject_class_id"
    t.string "role"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_class_id"], name: "index_enrollments_on_subject_class_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "forms", force: :cascade do |t|
    t.integer "template_id"
    t.integer "subject_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_class_id"], name: "index_forms_on_subject_class_id"
    t.index ["template_id"], name: "index_forms_on_template_id"
  end

  create_table "question_options", force: :cascade do |t|
    t.string "option_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_classes", force: :cascade do |t|
    t.integer "subject_id"
    t.string "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_subject_classes_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "subject_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_questions", force: :cascade do |t|
    t.integer "template_id"
    t.string "question_type"
    t.string "question_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["template_id"], name: "index_template_questions_on_template_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "registration"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
