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

ActiveRecord::Schema.define(version: 20171223021603) do

  create_table "branch_commercials", force: :cascade do |t|
    t.string "name"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branch_policies", force: :cascade do |t|
    t.string "name"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "case_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "case_terminations", force: :cascade do |t|
    t.string "name"
    t.integer "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "city_cases", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "departament"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coensurance_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "committees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "current_stages", force: :cascade do |t|
    t.string "name"
    t.integer "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gubernatorial_ways", force: :cascade do |t|
    t.string "name"
    t.integer "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internal_lawyers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "join_committees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "last_performances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "link_types", force: :cascade do |t|
    t.string "name"
    t.integer "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "litigation_sources", force: :cascade do |t|
    t.string "name"
    t.integer "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "money_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notification_type_seconds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "office_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "process_classes", force: :cascade do |t|
    t.string "name"
    t.integer "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "protections", force: :cascade do |t|
    t.string "name"
    t.string "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reinsurance_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserved_releaseds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "score_contingencies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sentence_type_desacates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setence_type_second_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subprocess_classes", force: :cascade do |t|
    t.string "name"
    t.integer "n_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_processes", force: :cascade do |t|
    t.integer "p_type", default: 0
    t.string "internal_lawyer"
    t.string "correspondency_radicate", default: "NO APLICA"
    t.string "case_id_bap", default: "NO APLICA"
    t.string "case_id_sise", default: "NO APLICA"
    t.string "case_id_ekogui", default: "NO APLICA"
    t.string "process_radicate", default: "NO APLICA"
    t.string "sinister", default: "NO APLICA"
    t.string "attorny", default: "NO APLICA"
    t.string "active_part", default: "NO APLICA"
    t.string "passive_part", default: "NO APLICA"
    t.string "contingency_reason", default: "NO APLICA"
    t.string "contingency_resume", default: "NO APLICA"
    t.string "coactive_radicate", default: "NO APLICA"
    t.string "policies", default: "NO APLICA"
    t.string "sinisters", default: "NO APLICA"
    t.string "case_onbase", default: "NO APLICA"
    t.string "tutelage_imp", default: "NO APLICA"
    t.string "reason_conc", default: "NO APLICA"
    t.string "reason_inv", default: "NO APLICA"
    t.string "office_name", default: "NO APLICA"
    t.string "other_office_name", default: "NO APLICA"
    t.string "departament", default: "NO APLICA"
    t.string "city_case", default: "SELECCIONE"
    t.string "process_class", default: "NO APLICA"
    t.string "subprocess_class", default: "NO APLICA"
    t.string "link_type", default: "NO APLICA"
    t.string "branch_policy", default: "NO APLICA"
    t.string "branch_commercial", default: "NO APLICA"
    t.string "score_contingency", default: "NO APLICA"
    t.string "protection", default: "NO APLICA"
    t.string "current_stage", default: "NO APLICA"
    t.string "litigation_source", default: "NO APLICA"
    t.string "instance", default: "NO APLICA"
    t.string "case_state", default: "NO APLICA"
    t.string "case_termination", default: "NO APLICA"
    t.string "reinsurance_type", default: "NO APLICA"
    t.string "last_performance", default: "NO APLICA"
    t.string "gubernatorial_way", default: "NO APLICA"
    t.string "notification_type_second", default: "NO APLICA"
    t.string "setence_type_second_company", default: "NO APLICA"
    t.string "sentence_type_desacate", default: "NO APLICA"
    t.string "reserved_released", default: "NO APLICA"
    t.string "money_type", default: "NO APLICA"
    t.string "join_committee", default: "NO APLICA"
    t.string "committee", default: "NO APLICA"
    t.string "coensurance_type", default: "NO APLICA"
    t.string "policy_taker", default: "NO APLICA"
    t.string "contract", default: "NO APLICA"
    t.text "more_protections", default: "NO APLICA"
    t.text "facts", default: "NO APLICA"
    t.bigint "dolar_value_cents"
    t.bigint "detritment_cents"
    t.bigint "ensurance_value_cents"
    t.bigint "contingency_value_cents"
    t.bigint "policy_cents"
    t.bigint "reserve_cents"
    t.bigint "reserved_fees_cents"
    t.bigint "provision_cents"
    t.bigint "fail_value_cents"
    t.bigint "fail_previ_cents"
    t.bigint "payed_value_cents"
    t.bigint "coactive_value_cents"
    t.bigint "garnish_value_cents"
    t.bigint "reensurance_gived_cents"
    t.bigint "auth_value_cents"
    t.bigint "reinsurance_value_cents"
    t.bigint "coensurance_value_cents"
    t.bigint "reconcilie_value_cents"
    t.bigint "cost_value_cents"
    t.date "creation_date"
    t.date "notification_date"
    t.date "attorny_date"
    t.date "desition_date"
    t.date "answer_date"
    t.date "objection_date_desition"
    t.date "objection_date_desition_notification"
    t.date "payment_date"
    t.date "imp_date"
    t.date "last_performance_date"
    t.date "failed_notification_date"
    t.date "objection_notification_date"
    t.date "committee_date"
    t.date "date_notification_desacate"
    t.date "date_answer_desacate"
    t.date "date_notification_desition_desacate"
    t.integer "number", default: 0
    t.integer "exercise", default: 0
    t.boolean "reinsurance_report", default: false
    t.boolean "recovery", default: false
    t.boolean "more_policies", default: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_type_processes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "document", default: "", null: false
    t.string "name", default: "", null: false
    t.string "charge", default: "", null: false
    t.integer "role", default: 0, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document"], name: "index_users_on_document", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
