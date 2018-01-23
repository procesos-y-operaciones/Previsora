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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "city_cases", force: :cascade do |t|
    t.string "name"
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
    t.date "creation_date"
    t.date "notification_date"
    t.integer "number", default: 0
    t.integer "exercise", default: 0
    t.string "sinister", default: "NO APLICA"
    t.string "attorny", default: "NO APLICA"
    t.date "attorny_date"
    t.string "active_part", default: "NO APLICA"
    t.string "passive_part", default: "NO APLICA"
    t.integer "dolar_value_cents", default: 0, null: false
    t.string "dolar_value_currency", default: "USD", null: false
    t.integer "detritment_cents", default: 0, null: false
    t.string "detritment_currency", default: "USD", null: false
    t.integer "ensurance_value_cents", default: 0, null: false
    t.string "ensurance_value_currency", default: "USD", null: false
    t.integer "contingency_value_cents", default: 0, null: false
    t.string "contingency_value_currency", default: "USD", null: false
    t.string "contingency_reason", default: "NO APLICA"
    t.string "contingency_resume", default: "NO APLICA"
    t.string "facts", default: "NO APLICA"
    t.integer "policy_cents", default: 0, null: false
    t.string "policy_currency", default: "USD", null: false
    t.integer "reserve_cents", default: 0, null: false
    t.string "reserve_currency", default: "USD", null: false
    t.integer "reserved_fees_cents", default: 0, null: false
    t.string "reserved_fees_currency", default: "USD", null: false
    t.integer "provision_cents", default: 0, null: false
    t.string "provision_currency", default: "USD", null: false
    t.date "desition_date"
    t.date "answer_date"
    t.date "objection_date_desition"
    t.date "objection_date_desition_notification"
    t.integer "fail_value_cents", default: 0, null: false
    t.string "fail_value_currency", default: "USD", null: false
    t.integer "fail_previ_cents", default: 0, null: false
    t.string "fail_previ_currency", default: "USD", null: false
    t.integer "payed_value_cents", default: 0, null: false
    t.string "payed_value_currency", default: "USD", null: false
    t.date "payment_date"
    t.date "imp_date"
    t.string "coactive_radicate", default: "NO APLICA"
    t.string "policies", default: "NO APLICA"
    t.string "sinisters", default: "NO APLICA"
    t.string "case_onbase", default: "NO APLICA"
    t.integer "coactive_value_cents", default: 0, null: false
    t.string "coactive_value_currency", default: "USD", null: false
    t.integer "garnish_value_cents", default: 0, null: false
    t.string "garnish_value_currency", default: "USD", null: false
    t.integer "reensurance_gived_cents", default: 0, null: false
    t.string "reensurance_gived_currency", default: "USD", null: false
    t.date "last_performance_date"
    t.date "failed_notification_date"
    t.date "objection_notification_date"
    t.date "committee_date"
    t.string "tutelage_imp", default: "NO APLICA"
    t.date "date_notification_desacate"
    t.date "date_answer_desacate"
    t.date "date_notification_desition_desacate"
    t.integer "auth_value_cents", default: 0, null: false
    t.string "auth_value_currency", default: "USD", null: false
    t.integer "reinsurance_value_cents", default: 0, null: false
    t.string "reinsurance_value_currency", default: "USD", null: false
    t.integer "coensurance_value_cents", default: 0, null: false
    t.string "coensurance_value_currency", default: "USD", null: false
    t.integer "reconcilie_value_cents", default: 0, null: false
    t.string "reconcilie_value_currency", default: "USD", null: false
    t.integer "cost_value_cents", default: 0, null: false
    t.string "cost_value_currency", default: "USD", null: false
    t.string "reason_conc", default: "NO APLICA"
    t.string "reason_inv", default: "NO APLICA"
    t.string "office_name", default: "NO APLICA"
    t.boolean "reinsurance_report", default: false
    t.boolean "recovery", default: false
    t.string "departament", default: "PENDIENTE"
    t.string "city_case", default: "PENDIENTE"
    t.string "process_class"
    t.string "subprocess_class"
    t.string "link_type"
    t.string "branch_policy"
    t.string "branch_commercial"
    t.string "score_contingency"
    t.string "protection"
    t.string "current_stage"
    t.string "litigation_source"
    t.string "instance"
    t.string "case_state"
    t.string "case_termination"
    t.string "reinsurance_type"
    t.string "last_performance"
    t.string "gubernatorial_way"
    t.string "notification_type_second"
    t.string "setence_type_second_company"
    t.string "sentence_type_desacate"
    t.string "reserved_released"
    t.string "money_type"
    t.string "join_committee"
    t.string "committee"
    t.string "coensurance_type"
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
