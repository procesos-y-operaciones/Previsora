# == Schema Information
#
# Table name: type_processes
#
#  id                                  :integer          not null, primary key
#  p_type                              :integer          default(0)
#  correspondency_radicate             :string           default("NO APLICA")
#  case_id_bap                         :string           default("NO APLICA")
#  case_id_sise                        :string           default("NO APLICA")
#  case_id_ekogui                      :string           default("NO APLICA")
#  creation_date                       :date
#  notification_date                   :date
#  process_radicate                    :string           default("NO APLICA")
#  number                              :integer          default(0)
#  exercise                            :integer          default(0)
#  sinister                            :string           default("NO APLICA")
#  attorny                             :string           default("NO APLICA")
#  attorny_date                        :date
#  active_part                         :string           default("NO APLICA")
#  passive_part                        :string           default("NO APLICA")
#  dolar_value_cents                   :integer          default(0), not null
#  dolar_value_currency                :string           default("USD"), not null
#  detritment_cents                    :integer          default(0), not null
#  detritment_currency                 :string           default("USD"), not null
#  ensurance_value_cents               :integer          default(0), not null
#  ensurance_value_currency            :string           default("USD"), not null
#  contingency_value_cents             :integer          default(0), not null
#  contingency_value_currency          :string           default("USD"), not null
#  contingency_reason                  :string           default("NO APLICA")
#  contingency_resume                  :string           default("NO APLICA")
#  facts                               :string           default("NO APLICA")
#  policy_cents                        :integer          default(0), not null
#  policy_currency                     :string           default("USD"), not null
#  reserve_cents                       :integer          default(0), not null
#  reserve_currency                    :string           default("USD"), not null
#  reserved_fees_cents                 :integer          default(0), not null
#  reserved_fees_currency              :string           default("USD"), not null
#  provision_cents                     :integer          default(0), not null
#  provision_currency                  :string           default("USD"), not null
#  desition_date                       :date
#  fail_value_cents                    :integer          default(0), not null
#  fail_value_currency                 :string           default("USD"), not null
#  fail_previ_cents                    :integer          default(0), not null
#  fail_previ_currency                 :string           default("USD"), not null
#  payed_value_cents                   :integer          default(0), not null
#  payed_value_currency                :string           default("USD"), not null
#  payment_date                        :date
#  imp_date                            :date
#  coactive_radicate                   :string           default("NO APLICA")
#  policies                            :string           default("NO APLICA")
#  sinisters                           :string           default("NO APLICA")
#  case_onbase                         :string           default("NO APLICA")
#  coactive_value_cents                :integer          default(0), not null
#  coactive_value_currency             :string           default("USD"), not null
#  garnish_value_cents                 :integer          default(0), not null
#  garnish_value_currency              :string           default("USD"), not null
#  reensurance_gived_cents             :integer          default(0), not null
#  reensurance_gived_currency          :string           default("USD"), not null
#  last_performance_date               :date
#  failed_notification_date            :date
#  objection_notification_date         :date
#  committee_date                      :date
#  tutelage_imp                        :string           default("NO APLICA")
#  date_notification_desacate          :date
#  date_answer_desacate                :date
#  date_notification_desition_desacate :date
#  auth_value_cents                    :integer          default(0), not null
#  auth_value_currency                 :string           default("USD"), not null
#  reinsurance_value_cents             :integer          default(0), not null
#  reinsurance_value_currency          :string           default("USD"), not null
#  coensurance_value_cents             :integer          default(0), not null
#  coensurance_value_currency          :string           default("USD"), not null
#  reconcilie_value_cents              :integer          default(0), not null
#  reconcilie_value_currency           :string           default("USD"), not null
#  cost_value_cents                    :integer          default(0), not null
#  cost_value_currency                 :string           default("USD"), not null
#  reason_conc                         :string           default("NO APLICA")
#  reason_inv                          :string           default("NO APLICA")
#  office_name                         :string           default("NO APLICA")
#  reinsurance_report                  :boolean          default(FALSE)
#  recovery                            :boolean          default(FALSE)
#  departament                         :string
#  city_case                           :string
#  process_class_id                    :integer
#  subprocess_class_id                 :integer
#  link_type_id                        :integer
#  branch_policy_id                    :integer
#  branch_commercial_id                :integer
#  score_contingency_id                :integer
#  protection_id                       :integer
#  current_stage_id                    :integer
#  litigation_source_id                :integer
#  instance_id                         :integer
#  case_state_id                       :integer
#  case_termination_id                 :integer
#  reinsurance_type_id                 :integer
#  last_performance_id                 :integer
#  gubernatorial_way_id                :integer
#  notification_type_second_id         :integer
#  setence_type_second_company_id      :integer
#  sentence_type_desacate_id           :integer
#  reserved_released_id                :integer
#  money_type_id                       :integer
#  join_committee_id                   :integer
#  committee_id                        :integer
#  coensurance_type_id                 :integer
#  user_id                             :integer
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#

require 'test_helper'

class TypeProcessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
