# == Schema Information
#
# Table name: type_processes
#
#  id                                  :integer          not null, primary key
#  p_type                              :integer
#  correspondency_radicate             :string
#  case_id_bap                         :string
#  case_id_sise                        :integer
#  creation_date                       :date
#  notification_date                   :date
#  process_radicate                    :string
#  number                              :integer
#  exercise                            :integer
#  sinister                            :string
#  attorny                             :string
#  attorny_date                        :date
#  active_part                         :string
#  passive_part                        :string
#  dolar_value_cents                   :integer          default(0), not null
#  dolar_value_currency                :string           default("USD"), not null
#  detritment_cents                    :integer          default(0), not null
#  detritment_currency                 :string           default("USD"), not null
#  ensurance_value_cents               :integer          default(0), not null
#  ensurance_value_currency            :string           default("USD"), not null
#  contingency_value_cents             :integer          default(0), not null
#  contingency_value_currency          :string           default("USD"), not null
#  contingency_reason                  :string
#  contingency_resume                  :string
#  facts                               :string
#  policy_cents                        :integer          default(0), not null
#  policy_currency                     :string           default("USD"), not null
#  reserve_cents                       :integer          default(0), not null
#  reserve_currency                    :string           default("USD"), not null
#  desition_date                       :date
#  fail_value_cents                    :integer          default(0), not null
#  fail_value_currency                 :string           default("USD"), not null
#  payed_value_cents                   :integer          default(0), not null
#  payed_value_currency                :string           default("USD"), not null
#  payment_date                        :date
#  reserved_fees_cents                 :integer          default(0), not null
#  reserved_fees_currency              :string           default("USD"), not null
#  coactive_value_cents                :integer          default(0), not null
#  coactive_value_currency             :string           default("USD"), not null
#  garnish_value_cents                 :integer          default(0), not null
#  garnish_value_currency              :string           default("USD"), not null
#  reensurance_gived_cents             :integer          default(0), not null
#  reensurance_gived_currency          :string           default("USD"), not null
#  last_performance_date               :date
#  failed_notification_date            :date
#  objection_notification_date         :date
#  tutelage_imp                        :string
#  date_notification_desacate          :date
#  date_answer_desacate                :date
#  date_notification_desition_desacate :date
#  auth_value_cents                    :integer          default(0), not null
#  auth_value_currency                 :string           default("USD"), not null
#  reason_conc                         :string
#  reason_inv                          :string
#  process_class_id                    :integer
#  subprocess_class_id                 :integer
#  link_type_id                        :integer
#  departament_id                      :integer
#  city_case_id                        :integer
#  branch_policy_id                    :integer
#  branch_commercial_id                :integer
#  office_name_id                      :integer
#  score_contingency_id                :integer
#  protection_id                       :integer
#  current_stage_id                    :integer
#  litigation_source_id                :integer
#  instance_id                         :integer
#  internal_lawyer_id                  :integer
#  case_state_id                       :integer
#  case_termination_id                 :integer
#  reinsurance_type_id                 :integer
#  last_performance_id                 :integer
#  gubernatorial_way_id                :integer
#  notification_type_second_id         :integer
#  setence_type_second_company_id      :integer
#  sentence_type_desacate_id           :integer
#  committee_id                        :integer
#  reserved_released_id                :integer
#  money_type_id                       :integer
#  join_committee_id                   :integer
#  user_id                             :integer
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#

class TypeProcess < ApplicationRecord

  belongs_to    :user
  validates :p_type, :process_class_id, presence: true

  before_validation   :veritycations

  def veritycations
    if self.p_type == 3
      if self.subprocess_class_id == 1
        errors.add(:subprocess_class_id, "Debes seleccionar una clase de Subprocesos")
      end
    end
  end

end
