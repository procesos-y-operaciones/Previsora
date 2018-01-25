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
#  creation_date                        :date
#  notification_date                    :date
#  number                               :integer          default(0)
#  exercise                             :integer          default(0)
#  sinister                             :string           default("NO APLICA")
#  attorny                              :string           default("NO APLICA")
#  attorny_date                         :date
#  active_part                          :string           default("NO APLICA")
#  passive_part                         :string           default("NO APLICA")
#  dolar_value_cents                    :integer          default(0), not null
#  dolar_value_currency                 :string           default("USD"), not null
#  detritment_cents                     :integer          default(0), not null
#  detritment_currency                  :string           default("USD"), not null
#  ensurance_value_cents                :integer          default(0), not null
#  ensurance_value_currency             :string           default("USD"), not null
#  contingency_value_cents              :integer          default(0), not null
#  contingency_value_currency           :string           default("USD"), not null
#  contingency_reason                   :string           default("NO APLICA")
#  contingency_resume                   :string           default("NO APLICA")
#  facts                                :string           default("NO APLICA")
#  policy_cents                         :integer          default(0), not null
#  policy_currency                      :string           default("USD"), not null
#  reserve_cents                        :integer          default(0), not null
#  reserve_currency                     :string           default("USD"), not null
#  reserved_fees_cents                  :integer          default(0), not null
#  reserved_fees_currency               :string           default("USD"), not null
#  provision_cents                      :integer          default(0), not null
#  provision_currency                   :string           default("USD"), not null
#  desition_date                        :date
#  answer_date                          :date
#  objection_date_desition              :date
#  objection_date_desition_notification :date
#  fail_value_cents                     :integer          default(0), not null
#  fail_value_currency                  :string           default("USD"), not null
#  fail_previ_cents                     :integer          default(0), not null
#  fail_previ_currency                  :string           default("USD"), not null
#  payed_value_cents                    :integer          default(0), not null
#  payed_value_currency                 :string           default("USD"), not null
#  payment_date                         :date
#  imp_date                             :date
#  coactive_radicate                    :string           default("NO APLICA")
#  policies                             :string           default("NO APLICA")
#  sinisters                            :string           default("NO APLICA")
#  case_onbase                          :string           default("NO APLICA")
#  coactive_value_cents                 :integer          default(0), not null
#  coactive_value_currency              :string           default("USD"), not null
#  garnish_value_cents                  :integer          default(0), not null
#  garnish_value_currency               :string           default("USD"), not null
#  reensurance_gived_cents              :integer          default(0), not null
#  reensurance_gived_currency           :string           default("USD"), not null
#  last_performance_date                :date
#  failed_notification_date             :date
#  objection_notification_date          :date
#  committee_date                       :date
#  tutelage_imp                         :string           default("NO APLICA")
#  date_notification_desacate           :date
#  date_answer_desacate                 :date
#  date_notification_desition_desacate  :date
#  auth_value_cents                     :integer          default(0), not null
#  auth_value_currency                  :string           default("USD"), not null
#  reinsurance_value_cents              :integer          default(0), not null
#  reinsurance_value_currency           :string           default("USD"), not null
#  coensurance_value_cents              :integer          default(0), not null
#  coensurance_value_currency           :string           default("USD"), not null
#  reconcilie_value_cents               :integer          default(0), not null
#  reconcilie_value_currency            :string           default("USD"), not null
#  cost_value_cents                     :integer          default(0), not null
#  cost_value_currency                  :string           default("USD"), not null
#  reason_conc                          :string           default("NO APLICA")
#  reason_inv                           :string           default("NO APLICA")
#  office_name                          :string           default("NO APLICA")
#  reinsurance_report                   :boolean          default(FALSE)
#  recovery                             :boolean          default(FALSE)
#  departament                          :string
#  city_case                            :string
#  process_class                        :string
#  subprocess_class                     :string
#  link_type                            :string
#  branch_policy                        :string
#  branch_commercial                    :string
#  score_contingency                    :string
#  protection                           :string
#  current_stage                        :string
#  litigation_source                    :string
#  instance                             :string
#  case_state                           :string
#  case_termination                     :string
#  reinsurance_type                     :string
#  last_performance                     :string
#  gubernatorial_way                    :string
#  notification_type_second             :string
#  setence_type_second_company          :string
#  sentence_type_desacate               :string
#  reserved_released                    :string
#  money_type                           :string
#  join_committee                       :string
#  committee                            :string
#  coensurance_type                     :string
#  user_id                              :integer
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#

class TypeProcess < ApplicationRecord

  validate :validate_ids

  def validate_ids
    if case_id_bap != "PENDIENTE" && TypeProcess.where(:case_id_bap => case_id_bap).present?
      errors.add("Número de identificación del caso (bizagi, access y pa)", " ya existe")
    end
    if case_id_sise != "PENDIENTE" && TypeProcess.where(:case_id_sise => case_id_bap).present?
      errors.add("Número de identificación del caso sise", " ya existe")
    end
    if case_id_ekogui != "PENDIENTE" && TypeProcess.where(:case_id_ekogui => case_id_ekogui).present?
      errors.add("Número de identificación del caso e-kogui", " ya existe")
    end
    if process_radicate != "PENDIENTE" && TypeProcess.where(:process_radicate => process_radicate).present?
      errors.add("Número de radicación del proceso", " ya existe")
    end
  end

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
     'Razon inviabilidad','Reserva liberada','Via gubertaniva', 'Fecha de contestacion tutela',
     'Fecha notificacion decision o fallo', 'Fecha de notificacion impugnacion', 'Impugnante',
     'Fecha decision impugnacion', 'Fecha de notificacion decision impugnacion', 'Tipo decision impugnacion',
     'Fecha notificacion incidente de desacato', 'Fecha de contestacion incidente de desacato',
     'Fecha notificacion decision incidente desacato', 'Tipo sentencia incidente de desacato']
  end

  def get_content_all
    [self.id, self.get_user, self.get_type_process, self.get_process_class, self.get_subprocess_class,
     self.correspondency_radicate, self.case_id_bap, self.case_id_sise, self.case_id_ekogui,
     self.creation_date, self.get_link_type, self.get_departament, self.city_case,
     self.get_reinsurance_type, self.get_reinsurance_report, self.reinsurance_value_cents,
     self.get_coensurance_type, self.reinsurance_value_cents, self.get_litigation_source,
     self.policy_cents, self.get_protection, self.number, self.exercise, self.get_branch_policy,
     self.get_branch_commercial, self.sinister, self.get_money_type, self.dolar_value_cents,
     self.provision_cents, self.reserved_fees_cents, self.detritment_cents, self.ensurance_value_cents, self.contingency_value_cents,
     self.contingency_value_cents, format_date(self.notification_date), self.process_radicate, self.attorny,
     format_date(self.attorny_date), self.office_name, self.active_part, self.passive_part, self.get_score_contingency,
     self.contingency_reason, self.contingency_resume, self.facts, self.get_current_stage, self.get_instance, self.get_case_state, format_date(self.desition_date),
     self.get_case_termination, self.cost_value_cents, self.fail_value_cents, self.fail_previ_cents,
     self.payed_value_cents, format_date(self.payment_date), self.get_recovery, self.coactive_radicate, self.coactive_value_cents,
     self.garnish_value_cents, self.get_last_performance, format_date(self.last_performance_date),
     self.get_join_committee, format_date(self.committee_date), self.get_committee, self.auth_value_cents,
     self.reconcilie_value_cents, self.reason_conc, self.reason_inv, self.get_reserved_released, self.get_gubernatorial_way,
     format_date(self.answer_date), format_date(self.failed_notification_date), format_date(self.imp_date),
     self.tutelage_imp, format_date(self.objection_date_desition), format_date(self.objection_date_desition_notification),
     self.get_setence_type_second_company, format_date(self.date_notification_desacate), format_date(self.date_answer_desacate),
     format_date(self.date_notification_desition_desacate), self.get_sentence_type_desacate]
  end

  def self.to_csv(date_from, date_until, options = {})
    CSV.generate(options) do |csv|
      csv << ["LA PREVISORA S.A. COMPANIA DE SEGUROS"]
      csv << ["VICEPRESIDENCIA JURIDICA"]
      csv << ["REPORTE DE PROCESOS REGISTRADOS"]
      csv << ["FECHA DE GENERACION: #{Date.today}"]
      csv << ["DESDE: #{date_from} HASTA: #{date_until}"]
      csv << []
      csv << column_names_all
      all.each do |p|
        csv << p.get_content_all
      end
    end
  end

  def get_type_process
    if self.p_type == 1
      "PROCESO PREJUDICIAL"
    elsif self.p_type == 2
      "PROCESO JUDICIAL"
    elsif self.p_type == 3
      "RESPONSABILIDAD FISCAL"
    elsif self.p_type == 4
      "PROCEDIMIENTO ADMINISTRATIVO"
    elsif self.p_type == 5
      "TUTELA"
    else
      "NO APLICA"
    end
  end

  def get_process_class
    if self.process_class == nil
      "NO APLICA"
    else
      self.process_class
    end
  end

  def get_subprocess_class
    if self.subprocess_class == nil
      "NO APLICA"
    else
      self.subprocess_class
    end
  end

  def get_link_type
    if self.link_type == nil
      "NO APLICA"
    else
      self.link_type
    end
  end

  def get_branch_commercial
    if self.branch_commercial == nil
      "NO APLICA"
    else
      self.branch_commercial
    end
  end

  def get_money_type
    if self.money_type == nil
      "NO APLICA"
    else
      self.money_type
    end
  end

  def get_score_contingency
    if self.score_contingency == nil
      "NO APLICA"
    else
      self.score_contingency
    end
  end

  def get_protection
    if self.protection == nil
      "NO APLICA"
    else
      self.protection
    end
  end

  def get_current_stage
    if self.current_stage == nil
      "NO APLICA"
    else
      self.current_stage
    end
  end

  def get_litigation_source
    if self.litigation_source == nil
      "NO APLICA"
    else
      self.litigation_source
    end
  end

  def get_instance
    if self.instance == nil
      "NO APLICA"
    else
      self.instance
    end
  end

  def get_case_state
    if self.case_state == nil
      "NO APLICA"
    else
      self.case_state
    end
  end

  def get_case_termination
    if self.case_termination == nil
      "NO APLICA"
    else
      self.case_termination
    end
  end

  def get_user
    if self.user_id == nil
      "USUARIO NO EXISTE"
    else
      User.find(user_id).name
    end
  end

  def get_reinsurance_type
    if self.reinsurance_type == nil
      "NO APLICA"
    else
      self.reinsurance_type
    end
  end

  def get_coensurance_type
    if self.coensurance_type == nil
      "NO APLICA"
    else
      self.coensurance_type
    end
  end

  def get_branch_policy
    if self.branch_policy == nil
      "NO APLICA"
    else
      self.branch_policy
    end
  end

  def get_last_performance
    if self.last_performance == nil
      "NO APLICA"
    else
      self.last_performance
    end
  end

  def get_join_committee
    if self.join_committee == nil
      "NO APLICA"
    else
      self.join_committee
    end
  end

  def get_reserved_released
    if self.reserved_released == nil
      "NO APLICA"
    else
      self.reserved_released
    end
  end

  def get_setence_type_second_company
    if self.setence_type_second_company == nil
      "NO APLICA"
    else
      self.setence_type_second_company
    end
  end

  def get_sentence_type_desacate
    if self.sentence_type_desacate == nil
      "NO APLICA"
    else
      self.sentence_type_desacate
    end
  end

  def get_gubernatorial_way
    if self.gubernatorial_way == nil
      "NO APLICA"
    else
      self.gubernatorial_way
    end
  end

  def get_committee
    if self.committee == nil
      "NO APLICA"
    else
      self.committee
    end
  end

  def get_departament
    if CS.states(:co)[self.departament.to_sym] == nil
      "PENDIENTE"
    else
      CS.states(:co)[self.departament.to_sym].upcase
    end
  end

  def get_reinsurance_report
    if self.reinsurance_report == true
      "SI"
    else
      "NO"
    end
  end

  def get_recovery
    if self.recovery == true
      "SI"
    else
      "NO"
    end
  end

  def format_date(date)
    if date == nil
      #Time.new(0000,0,0).to_date
      "DD/MM/AAAA"
    else
      date
    end
  end

  def self.get_all_departament
    CS.states(:co).sort_by {|_key, value| value}.to_h
  end

  def self.get_bog_departament
    {(CS.states(:co).assoc :DC).first => (CS.states(:co).assoc :DC).second.upcase}
  end

end
