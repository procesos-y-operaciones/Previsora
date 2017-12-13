class CreateTypeProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :type_processes do |t|

      t.string    :correspondency_radicate
      t.string    :case_id_bap
      t.integer   :case_id_sise
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
      t.date      :desition_date
      t.monetize  :fail_value
      t.monetize  :payed_value
      t.date      :payment_date
      t.monetize  :reserved_fees
      t.monetize  :coactive_value
      t.monetize  :garnish_value
      t.monetize  :reensurance_gived
      t.date      :last_performance_date
      t.date      :failed_notification_date
      t.date      :objection_notification_date
      t.string    :tutelage_imp
      t.date      :date_notification_desacate
      t.date      :date_answer_desacate
      t.date      :date_notification_desition_desacate
      t.monetize  :auth_value
      t.string    :reason_conc
      t.string    :reason_inv
      #t.references  :evaluation, foreign_key: true
      t.references  :process_class, foreign_key: true
      t.references  :subprocess_class, foreign_key: true
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

      t.timestamps
    end
  end
end
