# == Schema Information
#
# Table name: type_processes
#
#  id                                   :integer          not null, primary key
#  p_type                               :integer          default(0)
#  internal_lawyer                      :string
#  correspondency_radicate              :string           default("NO APLICA")
#  case_id_bap                          :string           default("NO APLICA")
#  case_id_sise                         :string           default("NO APLICA")
#  case_id_ekogui                       :string           default("NO APLICA")
#  process_radicate                     :string           default("NO APLICA")
#  sinister                             :string           default("NO APLICA")
#  attorny                              :string           default("NO APLICA")
#  active_part                          :string           default("NO APLICA")
#  passive_part                         :string           default("NO APLICA")
#  contingency_reason                   :string           default("NO APLICA")
#  contingency_resume                   :string           default("NO APLICA")
#  coactive_radicate                    :string           default("NO APLICA")
#  policies                             :string           default("NO APLICA")
#  sinisters                            :string           default("NO APLICA")
#  case_onbase                          :string           default("NO APLICA")
#  tutelage_imp                         :string           default("NO APLICA")
#  reason_conc                          :string           default("NO APLICA")
#  reason_inv                           :string           default("NO APLICA")
#  office_name                          :string           default("NO APLICA")
#  other_office_name                    :string           default("NO APLICA")
#  departament                          :string           default("NO APLICA")
#  city_case                            :string           default("SELECCIONE")
#  process_class                        :string           default("NO APLICA")
#  subprocess_class                     :string           default("NO APLICA")
#  link_type                            :string           default("NO APLICA")
#  branch_policy                        :string           default("NO APLICA")
#  branch_commercial                    :string           default("NO APLICA")
#  score_contingency                    :string           default("NO APLICA")
#  protection                           :string           default("NO APLICA")
#  current_stage                        :string           default("NO APLICA")
#  litigation_source                    :string           default("NO APLICA")
#  instance                             :string           default("NO APLICA")
#  case_state                           :string           default("NO APLICA")
#  case_termination                     :string           default("NO APLICA")
#  reinsurance_type                     :string           default("NO APLICA")
#  last_performance                     :string           default("NO APLICA")
#  gubernatorial_way                    :string           default("NO APLICA")
#  notification_type_second             :string           default("NO APLICA")
#  setence_type_second_company          :string           default("NO APLICA")
#  sentence_type_desacate               :string           default("NO APLICA")
#  reserved_released                    :string           default("NO APLICA")
#  money_type                           :string           default("NO APLICA")
#  join_committee                       :string           default("NO APLICA")
#  committee                            :string           default("NO APLICA")
#  coensurance_type                     :string           default("NO APLICA")
#  policy_taker                         :string           default("NO APLICA")
#  contract                             :string           default("NO APLICA")
#  more_protections                     :text             default("NO APLICA")
#  facts                                :text             default("NO APLICA")
#  dolar_value_cents                    :bigint(8)
#  detritment_cents                     :bigint(8)
#  ensurance_value_cents                :bigint(8)
#  contingency_value_cents              :bigint(8)
#  policy_cents                         :bigint(8)
#  reserve_cents                        :bigint(8)
#  reserved_fees_cents                  :bigint(8)
#  provision_cents                      :bigint(8)
#  fail_value_cents                     :bigint(8)
#  fail_previ_cents                     :bigint(8)
#  payed_value_cents                    :bigint(8)
#  coactive_value_cents                 :bigint(8)
#  garnish_value_cents                  :bigint(8)
#  reensurance_gived_cents              :bigint(8)
#  auth_value_cents                     :bigint(8)
#  reinsurance_value_cents              :bigint(8)
#  coensurance_value_cents              :bigint(8)
#  reconcilie_value_cents               :bigint(8)
#  cost_value_cents                     :bigint(8)
#  creation_date                        :date
#  notification_date                    :date
#  attorny_date                         :date
#  desition_date                        :date
#  answer_date                          :date
#  objection_date_desition              :date
#  objection_date_desition_notification :date
#  payment_date                         :date
#  imp_date                             :date
#  last_performance_date                :date
#  failed_notification_date             :date
#  objection_notification_date          :date
#  committee_date                       :date
#  date_notification_desacate           :date
#  date_answer_desacate                 :date
#  date_notification_desition_desacate  :date
#  number                               :integer          default(0)
#  exercise                             :integer          default(0)
#  reinsurance_report                   :boolean          default(FALSE)
#  recovery                             :boolean          default(FALSE)
#  user_id                              :integer
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#  has_correspondency_radicate          :boolean          default(FALSE)
#  has_more_polcies                     :boolean          default(FALSE)
#  has_costs                            :boolean          default(FALSE)
#  has_coactive_radicate                :boolean          default(FALSE)
#  has_impug                            :boolean          default(FALSE)
#  has_desacate                         :boolean          default(FALSE)
#  document_active_part                 :string           default("NO APLICA")
#  document_passive_part                :string           default("NO APLICA")
#

require 'test_helper'

class TypeProcessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
