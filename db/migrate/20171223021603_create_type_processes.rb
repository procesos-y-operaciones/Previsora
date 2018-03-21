class CreateTypeProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :type_processes do |t|
      #GENERAL
      t.integer   :p_type, default: 0
      t.string    :internal_lawyer
      #IDENTIFIERS
      t.string    :correspondency_radicate, default: "NO APLICA"
      t.string    :case_id_bap, default: "NO APLICA"
      t.string    :case_id_sise, default: "NO APLICA"
      t.string    :case_id_ekogui, default: "NO APLICA"
      t.string    :process_radicate, default: "NO APLICA"
      #LISTS AND STRINGS
      t.string    :sinister, default: "NO APLICA"
      t.string    :attorny, default: "NO APLICA"
      t.string    :active_part, default: "NO APLICA"
      t.string    :passive_part, default: "NO APLICA"
      t.string    :contingency_reason, default: "NO APLICA"
      t.string    :contingency_resume, default: "NO APLICA"
      t.string    :coactive_radicate, default: "NO APLICA"
      t.string    :policies, default: "NO APLICA"
      t.string    :sinisters, default: "NO APLICA"
      t.string    :case_onbase, default: "NO APLICA"
      t.string    :tutelage_imp, default: "NO APLICA"
      t.string    :reason_conc, default: "NO APLICA"
      t.string    :reason_inv, default: "NO APLICA"
      t.string    :office_name, default: "NO APLICA"
      t.string    :other_office_name, default: "NO APLICA"
      t.string    :departament, default: "NO APLICA"
      t.string    :city_case, default: "SELECCIONE"
      t.string    :process_class, default: "NO APLICA"
      t.string    :subprocess_class, default: "NO APLICA"
      t.string    :link_type, default: "NO APLICA"
      t.string    :branch_policy, default: "NO APLICA"
      t.string    :branch_commercial, default: "NO APLICA"
      t.string    :score_contingency, default: "NO APLICA"
      t.string    :protection, default: "NO APLICA"
      t.string    :current_stage, default: "NO APLICA"
      t.string    :litigation_source, default: "NO APLICA"
      t.string    :instance, default: "NO APLICA"
      t.string    :case_state, default: "NO APLICA"
      t.string    :case_termination, default: "NO APLICA"
      t.string    :reinsurance_type, default: "NO APLICA"
      t.string    :last_performance, default: "NO APLICA"
      t.string    :gubernatorial_way, default: "NO APLICA"
      t.string    :notification_type_second, default: "NO APLICA"
      t.string    :setence_type_second_company, default: "NO APLICA"
      t.string    :sentence_type_desacate, default: "NO APLICA"
      t.string    :reserved_released, default: "NO APLICA"
      t.string    :money_type, default: "NO APLICA"
      t.string    :join_committee, default: "NO APLICA"
      t.string    :committee, default: "NO APLICA"
      t.string    :coensurance_type, default: "NO APLICA"
      t.text      :more_protections, default: "NO APLICA"
      t.text      :facts, default: "NO APLICA"
      #VALUES
      t.bigint  :dolar_value_cents, default: 0
      t.bigint  :detritment_cents, default: 0
      t.bigint  :ensurance_value_cents, default: 0
      t.bigint  :contingency_value_cents, default: 0
      t.bigint  :policy_cents, default: 0
      t.bigint  :reserve_cents, default: 0
      t.bigint  :reserved_fees_cents, default: 0
      t.bigint  :provision_cents, default: 0
      t.bigint  :fail_value_cents, default: 0
      t.bigint  :fail_previ_cents, default: 0
      t.bigint  :payed_value_cents, default: 0
      t.bigint  :coactive_value_cents, default: 0
      t.bigint  :garnish_value_cents, default: 0
      t.bigint  :reensurance_gived_cents, default: 0
      t.bigint  :auth_value_cents, default: 0
      t.bigint  :reinsurance_value_cents, default: 0
      t.bigint  :coensurance_value_cents, default: 0
      t.bigint  :reconcilie_value_cents, default: 0
      t.bigint  :cost_value_cents, default: 0
      #DATES
      t.date      :creation_date
      t.date      :notification_date
      t.date      :attorny_date
      t.date      :desition_date
      t.date      :answer_date
      t.date      :objection_date_desition
      t.date      :objection_date_desition_notification
      t.date      :payment_date
      t.date      :imp_date
      t.date      :last_performance_date
      t.date      :failed_notification_date
      t.date      :objection_notification_date
      t.date      :committee_date
      t.date      :date_notification_desacate
      t.date      :date_answer_desacate
      t.date      :date_notification_desition_desacate
      #NUMBERS
      t.integer   :number, default: 0
      t.integer   :exercise, default: 0
      #BOOLEANS
      t.boolean   :reinsurance_report, default: false
      t.boolean   :recovery, default: false

      t.belongs_to :user, optional: true

      t.timestamps
    end
  end
end
