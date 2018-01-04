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

class TypeProcess < ApplicationRecord

  def self.column_names_all
    ['Id','Abogado interno','Tipo de proceso','Clase proceso','Subclase proceso',
     'Radicado correspondencia','Identificacion Bizagi Access PA','Identificacion SISE',
     'Identificacion E-KOGUI','Fecha de creacion','Tipo de vinculacion','Departamento',
     'Ciudad donde cursa el caso','Tipo de reaseguro','Reaseguro reportado',
     'Valor reaseguro','Tipo de coaseguro','Valor coaseguro','Fuente de litigio','Poliza',
     'Amparo','Numero (siniestro)','Ejercicio','Sucursal de la poliza','Ramo comercial',
     'Siniestro','Tipo de moneda','Valor del dolar','Reserva','Provision','Reserva honorarios',
     'Valor detrimento','Valor asegurado','Valor contingencia','Fecha de notificacion',
     'Numero de radicado del proceso','Apoderado Previsora','Fecha apoderado Previsora',
     'Nombre despacho','Parte activa','Parte pasiva','Calificacion contingencia','Razon contingencia',
     'Resumen contingencia','Hechos','Etapa actual','Instancia','Estado del caso','Fecha decision',
     'Terminacion del caso','Valor costas','Valor fallo','Valor fallo Previsora','Valor pagado Previsora',
     'Fecha de pago','Procede recobro','Radicacion coactivo','Valor coactivo','Valor embargo',
     'Ultima actuacion','Fecha ultima actuacion','Ingresa al comite','Fecha ingreso al comite',
     'Decision comite','Valor autorizado comite','Valor conciliado','Razon de no conciliar',
     'Razon inviabilidad','Reserva liberada','Fecha notificacion impugnacion','Impugnante',
     'Tipo de sentencia segunda instancia – compañia','Fecha notificacion incident de desacato',
     'Fecha contestacion desacato','Tipo de sentencia incidente desacato','Fecha notificacion desacato',
     'Fecha contestacion indicente desacato','Tipo de sentencia incidente desacato','Fecha notificacion decision incidente desacato',
     'Via gubertaniva']
  end

  def get_content_all
    [self.id, self.get_user, self.get_type_process, self.get_process_class, self.get_subprocess_class,
     self.correspondency_radicate, self.case_id_bap, self.case_id_sise, self.case_id_ekogui,
     self.creation_date, self.get_link_type, self.departament, self.city_case,
     self.get_reinsurance_type, self.reinsurance_report, self.reinsurance_value_cents,
     self.get_coensurance_type, self.reinsurance_value_cents, self.get_litigation_source,
     self.policy_cents, self.get_protection, self.number, self.exercise, self.get_branch_policy,
     self.get_branch_commercial, self.sinister, self.get_money_type, self.dolar_value_cents,
     self.provision_cents, self.reserved_fees_cents, self.detritment_cents, self.ensurance_value_cents, self.contingency_value_cents,
     self.contingency_value_cents, self.notification_date, self.process_radicate, self.attorny,
     self.attorny_date, self.office_name, self.active_part, self.passive_part, self.get_score_contingency,
     self.contingency_reason, self.contingency_resume, self.facts, self.get_current_stage, self.get_instance, self.get_case_state, self.desition_date,
     self.get_case_termination, self.cost_value_cents, self.fail_value_cents, self.fail_previ_cents,
     self.payed_value_cents, self.payment_date, self.recovery, self.coactive_radicate, self.coactive_value_cents,
     self.garnish_value_cents, self.get_last_performance, self.last_performance_date,
     self.get_join_committee, self.committee_date, self.get_committee, self.auth_value_cents,
     self.reconcilie_value_cents, self.reason_conc, self.reason_inv, self.get_reserved_released, self.imp_date,
     self.tutelage_imp, self.get_setence_type_second_company, self.date_notification_desacate,
     self.date_answer_desacate, self.get_sentence_type_desacate, self.date_notification_desition_desacate,
     self.gubernatorial_way_id
    ]
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names_all
      all.each do |p|
        csv << p.get_content_all
      end
    end
  end

  def get_type_process
    if self.p_type == 1
      "PREJUDICIAL"
    elsif self.p_type == 2
      "JUDICIAL"
    elsif self.p_type == 3
      "FISCAL"
    elsif self.p_type == 4
      "PROCEDIMIENTO ADMINISTRATIVO"
    elsif self.p_type == 5
      "TUTELA"
    else
      "NO APLICA"
    end
  end

  def get_process_class
    if self.process_class_id == nil
      "PENDIENTE"
    else
      ProcessClass.find(self.process_class_id).name
    end
  end

  def get_subprocess_class
    if self.subprocess_class_id == nil
      "PENDIENTE"
    else
      SubprocessClass.find(self.subprocess_class_id).name
    end
  end

  def get_link_type
    if self.link_type_id == nil
      "PENDIENTE"
    else
      LinkType.find(self.link_type_id).name
    end
  end

  def get_departament
    if self.departament_id == nil
      "PENDIENTE"
    else
      Departament.find(self.departament_id).name
    end
  end

  def get_city_case
    if self.city_case_id == nil
      "PENDIENTE"
    else
      CityCase.find(self.city_case_id).name
    end
  end

  def get_branch_commercial
    if self.branch_commercial_id == nil
      "PENDIENTE"
    else
      BranchCommercial.find(self.branch_commercial_id).large_name
    end
  end

  def get_money_type
    if self.money_type_id == nil
      "PENDIENTE"
    else
      MoneyType.find(self.money_type_id).name
    end
  end

  def get_score_contingency
    if self.score_contingency_id == nil
      "PENDIENTE"
    else
      ScoreContingency.find(self.score_contingency_id).name
    end
  end

  def get_protection
    if self.protection_id == nil
      "PENDIENTE"
    else
      Protection.find(self.protection_id).name
    end
  end

  def get_current_stage
    if self.current_stage_id == nil
      "PENDIENTE"
    else
      CurrentStage.find(self.current_stage_id).name
    end
  end

  def get_litigation_source
    if self.litigation_source_id == nil
      "PENDIENTE"
    else
      LitigationSource.find(self.litigation_source_id).name
    end
  end

  def get_instance
    if self.instance_id == nil
      "PENDIENTE"
    else
      Instance.find(self.instance_id).name
    end
  end

  def get_case_state
    if self.case_state_id == nil
      "PENDIENTE"
    else
      CaseState.find(self.case_state_id).name
    end
  end

  def get_case_termination
    if self.case_termination_id == nil
      "PENDIENTE"
    else
      CaseTermination.find(self.case_termination_id).name
    end
  end

  def get_user
    if self.user_id == nil
      "PENDIENTE"
    else
      User.find(user_id).name
    end
  end

  def get_reinsurance_type
    if self.reinsurance_type_id == nil
      "PENDIENTE"
    else
      ReinsuranceType.find(self.reinsurance_type_id).name
    end
  end

  def get_coensurance_type
    if self.coensurance_type_id == nil
      "PENDIENTE"
    else
      CoensuranceType.find(self.coensurance_type_id).name
    end
  end

  def get_branch_policy
    if self.branch_policy_id == nil
      "PENDIENTE"
    else
      BranchPolicy.find(branch_policy_id).large_name
    end
  end

  def get_last_performance
    if self.last_performance_id == nil
      "PENDIENTE"
    else
      LastPerformance.find(last_performance_id).name
    end
  end

  def get_join_committee
    if self.join_committee_id == nil
      "PENDIENTE"
    else
      JoinCommittee.find(self.join_committee_id).name
    end
  end

  def get_reserved_released
    if self.reserved_released_id == nil
      "PENDIENTE"
    else
      ReservedReleased.find(self.reserved_released_id).name
    end
  end

  def get_setence_type_second_company
    if self.setence_type_second_company_id == nil
      "PENDIENTE"
    else
      SetenceTypeSecondCompany.find(self.setence_type_second_company_id).name
    end
  end

  def get_sentence_type_desacate
    if self.sentence_type_desacate_id == nil
      "PENDIENTE"
    else
      SentenceTypeDesacate.find(self.sentence_type_desacate_id).name
    end
  end

  def get_gubernatorial_way
    if self.gubernatorial_way_id == nil
      "PENDIENTE"
    else
      GubernatorialWay.find(self.gubernatorial_way_id).name
    end
  end

  def get_committee
    if self.committee_id == nil
      "PENDIENTE"
    else
      Committee.fin(self.committee_id).name
    end
  end

  def self.get_all_departament
    CS.states(:co).each_pair do |k,v|
      CS.states(:co)[k] = v.upcase
    end
    CS.states(:co)
  end

  def self.get_bog_departament
    {(CS.states(:co).assoc :DC).first => (CS.states(:co).assoc :DC).second.upcase}
  end

end
