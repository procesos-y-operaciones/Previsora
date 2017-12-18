class CreateTypeProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :type_processes do |t|

      t.integer   :p_type, default: 0
      t.string    :correspondency_radicate, default: "Pendiente"
      t.string    :case_id_bap, default: "Pendiente"
      t.string    :case_id_sise, default: "Pendiente"
      t.date      :creation_date, default: Date.new(111990)
      t.date      :notification_date, default: Date.new(111990)
      t.string    :process_radicate, default: "Pendiente"
      t.integer   :number, default: 0
      t.integer   :exercise, default: 0
      t.string    :sinister, default: "Pendiente"
      t.string    :attorny, default: "Pendiente"
      t.date      :attorny_date, default: Date.new(111990)
      t.string    :active_part, default: "Pendiente"
      t.string    :passive_part, default: "Pendiente"
      t.monetize  :dolar_value
      t.monetize  :detritment
      t.monetize  :ensurance_value
      t.monetize  :contingency_value
      t.string    :contingency_reason, default: "Pendiente"
      t.string    :contingency_resume, default: "Pendiente"
      t.string    :facts, default: "Pendiente"
      t.monetize  :policy
      t.monetize  :reserve
      t.date      :desition_date, default: Date.new(111990)
      t.monetize  :fail_value
      t.monetize  :fail_previ
      t.monetize  :payed_value
      t.date      :payment_date, default: Date.new(111990)
      t.monetize  :reserved_fees
      t.string    :coactive_radicate, default: "Pendiente"
      t.string    :policies, default: "Pendiente"
      t.string    :sinisters, default: "Pendiente"
      t.monetize  :coactive_value
      t.monetize  :garnish_value
      t.monetize  :reensurance_gived
      t.date      :last_performance_date, default: Date.new(111990)
      t.date      :failed_notification_date, default: Date.new(111990)
      t.date      :objection_notification_date, default: Date.new(111990)
      t.string    :tutelage_imp, default: "Pendiente"
      t.date      :date_notification_desacate, default: Date.new(111990)
      t.date      :date_answer_desacate, default: Date.new(111990)
      t.date      :date_notification_desition_desacate, default: Date.new(111990)
      t.monetize  :auth_value
      t.string    :reason_conc, default: "Pendiente"
      t.string    :reason_inv, default: "Pendiente"
      t.boolean   :reinsurance_report, default: false

      t.references  :process_class,         foreign_key: true
      t.references  :subprocess_class,      foreign_key: true
      t.references  :link_type, foreign_key: true
      t.references  :departament, foreign_key: true
      t.references  :city_case, foreign_key: true
      t.references  :branch_policy, foreign_key: true
      t.references  :branch_commercial, foreign_key: true
      t.references  :office_name, foreign_key: true
      t.references  :score_contingency, foreign_key: true
      t.references  :protection, foreign_key: true
      t.references  :current_stage, foreign_key: true
      t.references  :litigation_source, foreign_key: true
      t.references  :instance, foreign_key: true
      t.references  :internal_lawyer, foreign_key: true
      t.references  :case_state, foreign_key: true
      t.references  :case_termination, foreign_key: true
      t.references  :reinsurance_type, foreign_key: true
      t.references  :last_performance, foreign_key: true
      t.references  :gubernatorial_way, foreign_key: true
      t.references  :notification_type_second, foreign_key: true
      t.references  :setence_type_second_company, foreign_key: true
      t.references  :sentence_type_desacate, foreign_key: true
      t.references  :committee, foreign_key: true
      t.references  :reserved_released, foreign_key: true
      t.references  :money_type, foreign_key: true
      t.references  :join_committee, foreign_key: true
      t.references  :coensurance_type, foreign_key: true
      t.references  :user, foreign_key: true

      t.timestamps
    end
  end
end
