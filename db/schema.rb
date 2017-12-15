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

ActiveRecord::Schema.define(version: 20171213021603) do

  create_table "branch_commercials", force: :cascade do |t|
    t.string "name"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branch_policies", force: :cascade do |t|
    t.string "name"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "litigation_sources", force: :cascade do |t|
    t.string "name"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "protections", force: :cascade do |t|
    t.string "name"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_processes", force: :cascade do |t|
    t.integer "p_type"
    t.string "correspondency_radicate"
    t.string "case_id_bap"
    t.integer "case_id_sise"
    t.date "creation_date"
    t.date "notification_date"
    t.string "process_radicate"
    t.integer "number"
    t.integer "exercise"
    t.string "sinister"
    t.string "attorny"
    t.date "attorny_date"
    t.string "active_part"
    t.string "passive_part"
    t.integer "dolar_value_cents", default: 0, null: false
    t.string "dolar_value_currency", default: "USD", null: false
    t.integer "detritment_cents", default: 0, null: false
    t.string "detritment_currency", default: "USD", null: false
    t.integer "ensurance_value_cents", default: 0, null: false
    t.string "ensurance_value_currency", default: "USD", null: false
    t.integer "contingency_value_cents", default: 0, null: false
    t.string "contingency_value_currency", default: "USD", null: false
    t.string "contingency_reason"
    t.string "contingency_resume"
    t.string "facts"
    t.integer "policy_cents", default: 0, null: false
    t.string "policy_currency", default: "USD", null: false
    t.integer "reserve_cents", default: 0, null: false
    t.string "reserve_currency", default: "USD", null: false
    t.date "desition_date"
    t.integer "fail_value_cents", default: 0, null: false
    t.string "fail_value_currency", default: "USD", null: false
    t.integer "payed_value_cents", default: 0, null: false
    t.string "payed_value_currency", default: "USD", null: false
    t.date "payment_date"
    t.integer "reserved_fees_cents", default: 0, null: false
    t.string "reserved_fees_currency", default: "USD", null: false
    t.integer "coactive_value_cents", default: 0, null: false
    t.string "coactive_value_currency", default: "USD", null: false
    t.integer "garnish_value_cents", default: 0, null: false
    t.string "garnish_value_currency", default: "USD", null: false
    t.integer "reensurance_gived_cents", default: 0, null: false
    t.string "reensurance_gived_currency", default: "USD", null: false
    t.date "last_performance_date"
    t.date "failed_notification_date"
    t.date "objection_notification_date"
    t.string "tutelage_imp"
    t.date "date_notification_desacate"
    t.date "date_answer_desacate"
    t.date "date_notification_desition_desacate"
    t.integer "auth_value_cents", default: 0, null: false
    t.string "auth_value_currency", default: "USD", null: false
    t.string "reason_conc"
    t.string "reason_inv"
    t.integer "process_class_id"
    t.integer "subprocess_class_id"
    t.integer "link_type_id"
    t.integer "departament_id"
    t.integer "city_case_id"
    t.integer "branch_policy_id"
    t.integer "branch_commercial_id"
    t.integer "office_name_id"
    t.integer "score_contingency_id"
    t.integer "protection_id"
    t.integer "current_stage_id"
    t.integer "litigation_source_id"
    t.integer "instance_id"
    t.integer "internal_lawyer_id"
    t.integer "case_state_id"
    t.integer "case_termination_id"
    t.integer "reinsurance_type_id"
    t.integer "last_performance_id"
    t.integer "gubernatorial_way_id"
    t.integer "notification_type_second_id"
    t.integer "setence_type_second_company_id"
    t.integer "sentence_type_desacate_id"
    t.integer "committee_id"
    t.integer "reserved_released_id"
    t.integer "money_type_id"
    t.integer "join_committee_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_commercial_id"], name: "index_type_processes_on_branch_commercial_id"
    t.index ["branch_policy_id"], name: "index_type_processes_on_branch_policy_id"
    t.index ["case_state_id"], name: "index_type_processes_on_case_state_id"
    t.index ["case_termination_id"], name: "index_type_processes_on_case_termination_id"
    t.index ["city_case_id"], name: "index_type_processes_on_city_case_id"
    t.index ["committee_id"], name: "index_type_processes_on_committee_id"
    t.index ["current_stage_id"], name: "index_type_processes_on_current_stage_id"
    t.index ["departament_id"], name: "index_type_processes_on_departament_id"
    t.index ["gubernatorial_way_id"], name: "index_type_processes_on_gubernatorial_way_id"
    t.index ["instance_id"], name: "index_type_processes_on_instance_id"
    t.index ["internal_lawyer_id"], name: "index_type_processes_on_internal_lawyer_id"
    t.index ["join_committee_id"], name: "index_type_processes_on_join_committee_id"
    t.index ["last_performance_id"], name: "index_type_processes_on_last_performance_id"
    t.index ["link_type_id"], name: "index_type_processes_on_link_type_id"
    t.index ["litigation_source_id"], name: "index_type_processes_on_litigation_source_id"
    t.index ["money_type_id"], name: "index_type_processes_on_money_type_id"
    t.index ["notification_type_second_id"], name: "index_type_processes_on_notification_type_second_id"
    t.index ["office_name_id"], name: "index_type_processes_on_office_name_id"
    t.index ["process_class_id"], name: "index_type_processes_on_process_class_id"
    t.index ["protection_id"], name: "index_type_processes_on_protection_id"
    t.index ["reinsurance_type_id"], name: "index_type_processes_on_reinsurance_type_id"
    t.index ["reserved_released_id"], name: "index_type_processes_on_reserved_released_id"
    t.index ["score_contingency_id"], name: "index_type_processes_on_score_contingency_id"
    t.index ["sentence_type_desacate_id"], name: "index_type_processes_on_sentence_type_desacate_id"
    t.index ["setence_type_second_company_id"], name: "index_type_processes_on_setence_type_second_company_id"
    t.index ["subprocess_class_id"], name: "index_type_processes_on_subprocess_class_id"
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
