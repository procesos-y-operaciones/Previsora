class CreateTypeProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :type_processes do |t|

      t.integer   :p_type, default: 0
      t.string    :correspondency_radicate, default: "PENDIENTE"
      t.string    :case_id_bap, default: "PENDIENTE"
      t.string    :case_id_sise, default: "PENDIENTE"
      t.date      :creation_date, default: Date.new(1990, 1, 1)
      t.date      :notification_date, default: Date.new(1990, 1, 1)
      t.string    :process_radicate, default: "PENDIENTE"
      t.integer   :number, default: 0
      t.integer   :exercise, default: 0
      t.string    :sinister, default: "PENDIENTE"
      t.string    :attorny, default: "PENDIENTE"
      t.date      :attorny_date, default: Date.new(1990, 1, 1)
      t.string    :active_part, default: "PENDIENTE"
      t.string    :passive_part, default: "PENDIENTE"
      t.monetize  :dolar_value
      t.monetize  :detritment
      t.monetize  :ensurance_value
      t.monetize  :contingency_value
      t.string    :contingency_reason, default: "PENDIENTE"
      t.string    :contingency_resume, default: "PENDIENTE"
      t.string    :facts, default: "PENDIENTE"
      t.monetize  :policy
      t.monetize  :reserve
      t.date      :desition_date, default: Date.new(1990, 1, 1)
      t.monetize  :fail_value
      t.monetize  :fail_previ
      t.monetize  :payed_value
      t.date      :payment_date, default: Date.new(1990, 1, 1)
      t.monetize  :reserved_fees
      t.string    :coactive_radicate, default: "PENDIENTE"
      t.string    :policies, default: "PENDIENTE"
      t.string    :sinisters, default: "PENDIENTE"
      t.monetize  :coactive_value
      t.monetize  :garnish_value
      t.monetize  :reensurance_gived
      t.date      :last_performance_date, default: Date.new(1990, 1, 1)
      t.date      :failed_notification_date, default: Date.new(1990, 1, 1)
      t.date      :objection_notification_date, default: Date.new(1990, 1, 1)
      t.string    :tutelage_imp, default: "PENDIENTE"
      t.date      :date_notification_desacate, default: Date.new(1990, 1, 1)
      t.date      :date_answer_desacate, default: Date.new(1990, 1, 1)
      t.date      :date_notification_desition_desacate, default: Date.new(1990, 1, 1)
      t.monetize  :auth_value
      t.string    :reason_conc, default: "PENDIENTE"
      t.string    :reason_inv, default: "PENDIENTE"
      t.boolean   :reinsurance_report, default: false

      t.belongs_to  :process_class,         optional: true
      t.belongs_to  :subprocess_class,      optional: true
      t.belongs_to  :link_type,             optional: true
      t.belongs_to  :departament,           optional: true
      t.belongs_to  :city_case,             optional: true
      t.belongs_to  :branch_policy,         optional: true
      t.belongs_to  :branch_commercial,     optional: true
      t.belongs_to  :office_name,           optional: true
      t.belongs_to  :score_contingency,     optional: true
      t.belongs_to  :protection,            optional: true
      t.belongs_to  :current_stage,         optional: true
      t.belongs_to  :litigation_source,     optional: true
      t.belongs_to  :instance,              optional: true
      t.belongs_to  :case_state,            optional: true
      t.belongs_to  :case_termination,      optional: true
      t.belongs_to  :reinsurance_type,      optional: true
      t.belongs_to  :last_performance,      optional: true
      t.belongs_to  :gubernatorial_way,     optional: true
      t.belongs_to  :notification_type_second, optional: true
      t.belongs_to  :setence_type_second_company, optional: true
      t.belongs_to  :sentence_type_desacate, optional: true
      t.belongs_to  :committee,             optional: true
      t.belongs_to  :reserved_released,     optional: true
      t.belongs_to  :money_type,            optional: true
      t.belongs_to  :join_committee,        optional: true
      t.belongs_to  :coensurance_type,      optional: true
      t.belongs_to  :user,                  optional: true

      t.timestamps
    end
  end
end
