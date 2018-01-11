class CreateTypeProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :type_processes do |t|

      t.integer   :p_type, default: 0
      t.string    :correspondency_radicate, default: "NO APLICA"
      t.string    :case_id_bap, default: "NO APLICA"
      t.string    :case_id_sise, default: "NO APLICA"
      t.string    :case_id_ekogui, default: "NO APLICA"
      t.date      :creation_date
      t.date      :notification_date
      t.string    :process_radicate, default: "NO APLICA"
      t.integer   :number, default: 0
      t.integer   :exercise, default: 0
      t.string    :sinister, default: "NO APLICA"
      t.string    :attorny, default: "NO APLICA"
      t.date      :attorny_date
      t.string    :active_part, default: "NO APLICA"
      t.string    :passive_part, default: "NO APLICA"
      t.monetize  :dolar_value
      t.monetize  :detritment
      t.monetize  :ensurance_value
      t.monetize  :contingency_value
      t.string    :contingency_reason, default: "NO APLICA"
      t.string    :contingency_resume, default: "NO APLICA"
      t.string    :facts, default: "NO APLICA"
      t.monetize  :policy
      t.monetize  :reserve
      t.monetize  :reserved_fees
      t.monetize  :provision
      t.date      :desition_date
      t.date      :answer_date
      t.date      :objection_date_desition
      t.date      :objection_date_desition_notification
      t.monetize  :fail_value
      t.monetize  :fail_previ
      t.monetize  :payed_value
      t.date      :payment_date
      t.date      :imp_date
      t.string    :coactive_radicate, default: "NO APLICA"
      t.string    :policies, default: "NO APLICA"
      t.string    :sinisters, default: "NO APLICA"
      t.string    :case_onbase, default: "NO APLICA"
      t.monetize  :coactive_value
      t.monetize  :garnish_value
      t.monetize  :reensurance_gived
      t.date      :last_performance_date
      t.date      :failed_notification_date
      t.date      :objection_notification_date
      t.date      :committee_date
      t.string    :tutelage_imp, default: "NO APLICA"
      t.date      :date_notification_desacate
      t.date      :date_answer_desacate
      t.date      :date_notification_desition_desacate
      t.monetize  :auth_value
      t.monetize  :reinsurance_value
      t.monetize  :coensurance_value
      t.monetize  :reconcilie_value
      t.monetize  :cost_value
      t.string    :reason_conc, default: "NO APLICA"
      t.string    :reason_inv, default: "NO APLICA"
      t.string    :office_name, default: "NO APLICA"
      t.boolean   :reinsurance_report, default: false
      t.boolean   :recovery, default: false
      t.string    :departament
      t.string    :city_case

      t.belongs_to  :process_class,                 optional: true
      t.belongs_to  :subprocess_class,              optional: true
      t.belongs_to  :link_type,                     optional: true
      #t.belongs_to  :departament,                   optional: true
      #t.belongs_to  :city_case,                     optional: true
      t.belongs_to  :branch_policy,                 optional: true
      t.belongs_to  :branch_commercial,             optional: true
      #t.belongs_to  :office_name,                   optional: true
      t.belongs_to  :score_contingency,             optional: true
      t.belongs_to  :protection,                    optional: true
      t.belongs_to  :current_stage,                 optional: true
      t.belongs_to  :litigation_source,             optional: true
      t.belongs_to  :instance,                      optional: true
      t.belongs_to  :case_state,                    optional: true
      t.belongs_to  :case_termination,              optional: true
      t.belongs_to  :reinsurance_type,              optional: true
      t.belongs_to  :last_performance,              optional: true
      t.belongs_to  :gubernatorial_way,             optional: true
      t.belongs_to  :notification_type_second,      optional: true
      t.belongs_to  :setence_type_second_company,   optional: true
      t.belongs_to  :sentence_type_desacate,        optional: true
      t.belongs_to  :reserved_released,             optional: true
      t.belongs_to  :money_type,                    optional: true
      t.belongs_to  :join_committee,                optional: true
      t.belongs_to  :committee,                     optional: true
      t.belongs_to  :coensurance_type,              optional: true
      t.belongs_to  :user,                          optional: true

      t.timestamps
    end
  end
end
