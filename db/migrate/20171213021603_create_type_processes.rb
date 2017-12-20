class CreateTypeProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :type_processes do |t|

      t.integer   :p_type
      t.string    :correspondency_radicate
      t.string    :case_id_bap
      t.string    :case_id_sise
      t.date      :creation_date
      t.date      :notification_date
      t.string    :process_radicate
      t.integer   :number
      t.integer   :exercise
      t.string    :sinister
      t.string    :attorny
      t.date      :attorny_date
      t.string    :active_part
      t.string    :passive_part
      t.monetize  :dolar_value
      t.monetize  :detritment
      t.monetize  :ensurance_value
      t.monetize  :contingency_value
      t.string    :contingency_reason
      t.string    :contingency_resume
      t.string    :facts
      t.monetize  :policy
      t.monetize  :reserve
      t.monetize  :provision
      t.date      :desition_date
      t.monetize  :fail_value
      t.monetize  :fail_previ
      t.monetize  :payed_value
      t.date      :payment_date
      t.string    :coactive_radicate
      t.string    :policies
      t.string    :sinisters
      t.monetize  :coactive_value
      t.monetize  :garnish_value
      t.monetize  :reensurance_gived
      t.date      :last_performance_date
      t.date      :failed_notification_date
      t.date      :objection_notification_date
      t.date      :committee_date
      t.string    :committee_desition
      t.string    :tutelage_imp
      t.date      :date_notification_desacate
      t.date      :date_answer_desacate
      t.date      :date_notification_desition_desacate
      t.monetize  :auth_value
      t.monetize  :reinsurance_value
      t.monetize  :reconcilie_value
      t.string    :reason_conc
      t.string    :reason_inv
      t.boolean   :reinsurance_report, default: false

      t.belongs_to  :process_class,                 optional: true
      t.belongs_to  :subprocess_class,              optional: true
      t.belongs_to  :link_type,                     optional: true
      t.belongs_to  :departament,                   optional: true
      t.belongs_to  :city_case,                     optional: true
      t.belongs_to  :branch_policy,                 optional: true
      t.belongs_to  :branch_commercial,             optional: true
      t.belongs_to  :office_name,                   optional: true
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
