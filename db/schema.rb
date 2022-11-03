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

ActiveRecord::Schema.define(version: 2022_10_31_023339) do

  create_table "academic_programs", force: :cascade do |t|
    t.string "name_academic_program", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name_academic_program"], name: "index_academic_programs_on_name_academic_program", unique: true
  end

  create_table "academic_to_subject_relations", force: :cascade do |t|
    t.integer "subjects_id"
    t.integer "academicPrograms_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["academicPrograms_id"], name: "index_academic_to_subject_relations_on_academicPrograms_id"
    t.index ["subjects_id"], name: "index_academic_to_subject_relations_on_subjects_id"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string "matricula", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "periodo_actual", null: false
    t.integer "porcentaje_beca"
    t.string "nivel", null: false
    t.integer "unidades_permitdas_a_inscribir", null: false
    t.float "promedio_acomulado", null: false
    t.string "trimestre_acreditado"
    t.string "ultimo_periodo_cursado"
    t.datetime "fecha_entrada", null: false
    t.datetime "fecha_graduacion_planeada", null: false
    t.integer "numero_cursos_cursados"
    t.integer "patrocinado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "universitary_centers_id"
    t.index ["email"], name: "index_alumnos_on_email", unique: true
    t.index ["matricula"], name: "index_alumnos_on_matricula", unique: true
    t.index ["phone"], name: "index_alumnos_on_phone", unique: true
    t.index ["universitary_centers_id"], name: "index_alumnos_on_universitary_centers_id"
  end

  create_table "historical_student_scholarships", force: :cascade do |t|
    t.integer "alumnos_id"
    t.integer "scholarships_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alumnos_id"], name: "index_historical_student_scholarships_on_alumnos_id"
    t.index ["scholarships_id"], name: "index_historical_student_scholarships_on_scholarships_id"
  end

  create_table "historical_student_statuses", force: :cascade do |t|
    t.integer "studentStatus_id"
    t.integer "alumnos_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alumnos_id"], name: "index_historical_student_statuses_on_alumnos_id"
    t.index ["studentStatus_id"], name: "index_historical_student_statuses_on_studentStatus_id"
  end

  create_table "scholarships", force: :cascade do |t|
    t.integer "beca_base"
    t.string "nombre_beca"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sedes", force: :cascade do |t|
    t.string "sede_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sede_name"], name: "index_sedes_on_sede_name", unique: true
  end

  create_table "student_statuses", force: :cascade do |t|
    t.string "status_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["status_name"], name: "index_student_statuses_on_status_name", unique: true
  end

  create_table "student_subject_relations", force: :cascade do |t|
    t.integer "finalScore", null: false
    t.string "period"
    t.integer "alumnos_id"
    t.integer "subjects_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alumnos_id"], name: "index_student_subject_relations_on_alumnos_id"
    t.index ["subjects_id"], name: "index_student_subject_relations_on_subjects_id"
  end

  create_table "student_subject_statuses", force: :cascade do |t|
    t.integer "student_subject_relation_id"
    t.integer "subject_statuses_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_subject_relation_id"], name: "index_student_subject_statuses_on_student_subject_relation_id"
    t.index ["subject_statuses_id"], name: "index_student_subject_statuses_on_subject_statuses_id"
  end

  create_table "subject_statuses", force: :cascade do |t|
    t.string "status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["status_name"], name: "index_subject_statuses_on_status_name", unique: true
  end

  create_table "subject_types", force: :cascade do |t|
    t.string "name_subject_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name_subject_type"], name: "index_subject_types_on_name_subject_type", unique: true
  end

  create_table "subjects", force: :cascade do |t|
    t.string "class_key", null: false
    t.integer "duration_of_weeks", null: false
    t.string "classname", null: false
    t.integer "subject_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["class_key"], name: "index_subjects_on_class_key", unique: true
    t.index ["classname"], name: "index_subjects_on_classname", unique: true
    t.index ["subject_type_id"], name: "index_subjects_on_subject_type_id"
  end

  create_table "universitary_centers", force: :cascade do |t|
    t.string "universitary_center_name", null: false
    t.integer "sede_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sede_id"], name: "index_universitary_centers_on_sede_id"
    t.index ["universitary_center_name"], name: "index_universitary_centers_on_universitary_center_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
