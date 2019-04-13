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
#  dolar_value_cents                    :integer          default(0)
#  detritment_cents                     :integer          default(0)
#  ensurance_value_cents                :integer          default(0)
#  contingency_value_cents              :integer          default(0)
#  policy_cents                         :integer          default(0)
#  reserve_cents                        :integer          default(0)
#  reserved_fees_cents                  :integer          default(0)
#  provision_cents                      :integer          default(0)
#  fail_value_cents                     :integer          default(0)
#  fail_previ_cents                     :integer          default(0)
#  payed_value_cents                    :integer          default(0)
#  coactive_value_cents                 :integer          default(0)
#  garnish_value_cents                  :integer          default(0)
#  reensurance_gived_cents              :integer          default(0)
#  auth_value_cents                     :integer          default(0)
#  reinsurance_value_cents              :integer          default(0)
#  coensurance_value_cents              :integer          default(0)
#  reconcilie_value_cents               :integer          default(0)
#  cost_value_cents                     :integer          default(0)
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
#

class TypeProcess < ApplicationRecord

  validate :validate_ids, on: :create
  validate :update_ids, on: :edit

  serialize :protection

  def validate_ids
    if case_id_bap != "NO PRESENTA" && case_id_bap != "NO APLICA" && case_id_bap != "PENDIENTE" && TypeProcess.where(:case_id_bap => case_id_bap).present?
      errors.add("Número de identificación del caso (Bizagi, Access y PA)", " ya existe")
    end
    if case_id_sise != "NO PRESENTA" && case_id_sise != "NO APLICA" && case_id_sise != "PENDIENTE" && TypeProcess.where(:case_id_sise => case_id_bap).present?
      errors.add("Número de identificación del caso sise", " ya existe")
    end
    if case_id_ekogui != "NO PRESENTA" && case_id_ekogui != "NO APLICA" && case_id_ekogui != "PENDIENTE" && TypeProcess.where(:case_id_ekogui => case_id_ekogui).present?
      errors.add("Número de identificación del caso e-kogui", " ya existe")
    end
    if process_radicate != "NO PRESENTA" && process_radicate != "NO APLICA" && process_radicate != "PENDIENTE" && TypeProcess.where(:process_radicate => process_radicate).present?
      errors.add("Número de radicación del proceso", " ya existe")
    end
    if correspondency_radicate != "NO PRESENTA" && correspondency_radicate != "NO APLICA" && correspondency_radicate != "PENDIENTE" && TypeProcess.where(:correspondency_radicate => correspondency_radicate).present?
      errors.add("Número de correspondencia", " ya existe")
    end
  end

  def update_ids
    if case_id_bap != "NO APLICA" && case_id_bap != "PENDIENTE" && TypeProcess.where(:case_id_bap => case_id_bap)[0].id != id
      errors.add("Número de identificación del caso (Bizagi, Access y PA)", " ya existe")
    end
    if case_id_sise != "NO APLICA" && case_id_sise != "PENDIENTE" && TypeProcess.where(:case_id_sise => case_id_bap)[0].id != id
      errors.add("Número de identificación del caso sise", " ya existe")
    end
    if case_id_ekogui != "NO APLICA" && case_id_ekogui != "PENDIENTE" && TypeProcess.where(:case_id_ekogui => case_id_ekogui)[0].id != id
      errors.add("Número de identificación del caso e-kogui", " ya existe")
    end
    if process_radicate != "NO APLICA" && process_radicate != "PENDIENTE" && TypeProcess.where(:process_radicate => process_radicate)[0].id == id
      errors.add("Número de radicación del proceso", " ya existe")
    end
    if correspondency_radicate != "NO APLICA" && correspondency_radicate != "PENDIENTE" && TypeProcess.where(:correspondency_radicate => correspondency_radicate)[0].id == id
      errors.add("Número de correspondencia", " ya existe")
    end
  end

  def self.column_names_all
    ['IDENTIFICADOR','ABOGADO INTERNO','TIPO DE PROCESO','CLASE DE PROCESO','SUBCLASE DE PROCESO',
     'RADICADO CORRESPONDENCIA','IDENFICACION BIZAGI ACCESS PA','IDENTIFICACION SISE',
     'IDENTIFICACION E-KOGUI','FECHA DE CREACION','TIPO DE VINCULACION','DEPARTAMENTO',
     'CIUDAD DONDE CURSA EL CASO','TIPO DE REASEGURO','REASEGURO REPORTADO',
     'VALOR REASEGURO','TIPO DE COASEGURO','VALOR COASEGURO','FUENTE DEL LITIGIO','POLIZA',
     'AMPARO','NUMERO DEL SINIESTRO','EJERCICIO','SUCURSAL DE LA POLIZA','RAMO COMERCIAL',
     'SINIESTRO','TIPO DE MONEDA','VALOR DEL DOLAR','VALOR RESERVA','VALOR PROVISION','RESERVA HONORARIOS',
     'VALOR PRETESION - DETRIMENTO - ESTIMACION','VALOR ASEGURADO','VALOR CONTINGENCIA','FECHA DE NOTIFICACION',
     'NUMERO DE RADICADO DEL PROCESO','APODERADO EN PREVISORA','FECHA DE ASIGNACION DEL APODERADO EN PREVISORA',
     'NOMBRE DEL DESPACHO','PARTE ACTIVA','PARTE PASIVA','CALIFICACION DE LA CONTINGENCIA','HECHOS','RESUMEN DE LA CONTINGENCIA',
     'RAZON DE LA CONTINGENCIA','ETAPA ACTUAL','INSTANCIAS','ESTADO DEL CASO','FECHA DE LA DECISION',
     'TERMINACION DEL CASO','VALOR COSTAS','VALOR FALLO','VALOR FALLO PREVISORA','VALOR PAGADO PREVISORA',
     'FECHA DE PAGO','PROCEDE RECOBRO','RADICACION COACTIVO','VALOR COACTIVO','VALOR EMBARGO',
     'ULTIMA ACTUACION','FECHA ULTIMA ACTUACION','INGRESA AL COMITE','FECHA DE INGRESO AL COMITE',
     'DECISION DEL COMITE','VALOR AUTORIZADO COMITE','VALOR CONCILIADO','RAZON DE NO CONCILIAR',
     'RAZON DE INVIABILIDAD','RESERVA LIBERADA','TIPOLOGIA (COLJUEGOS)', 'FECHA DE CONTESTACION TUTELA',
     'FECHA NOTIFICACION O FALLO', 'FECHA NOTIFICACION IMPUGNACION', 'IMPUGNANTE',
     'FECHA DECISION IMPUGNACION', 'FECHA DE NOTIFICACION DECISION IMPUGNACION', 'TIPO DE DECISION IMPUGNACION',
     'FECHA NOTIFICACION INCIDENTE DESACATO', 'FECHA DE CONTESTACION INCIDENTE DESACATO',
     'FECHA NOTIFICACION DECISION INCIDENTE DESACATO', 'TIPO SENTENCIA INCIDENTE DESACATO',
     'TOMADOR DE LA POLIZA', 'CONTRATO CONCESION']
  end

  def get_content_all
    [self.id, self.get_user, self.get_type_process, self.process_class, self.subprocess_class,
     nilPendiente(self.correspondency_radicate), nilPendiente(self.case_id_bap), nilPendiente(self.case_id_sise), nilPendiente(self.case_id_ekogui),
     self.creation_date, self.get_link_type, self.get_departament, self.city_case,
     self.reinsurance_type, self.reinsurance_report, nilValue(self.reinsurance_value_cents),
     self.coensurance_type, nilValue(self.coensurance_value_cents), self.litigation_source,
     self.policy_cents.to_s + self.policies, self.get_protection + self.more_protections, self.number, self.exercise, self.branch_policy,
     self.branch_commercial, self.sinister + self.sinisters, self.money_type, nilValue(self.dolar_value_cents),
     nilValue(self.reserve_cents), nilValue(self.provision_cents), nilValue(self.reserved_fees_cents), nilValue(self.detritment_cents), nilValue(self.ensurance_value_cents),
     nilValue(self.contingency_value_cents), format_date(self.notification_date), nilPendiente(self.process_radicate), self.attorny,
     format_date(self.attorny_date), self.office_name, self.active_part, self.passive_part, nilPendiente(self.score_contingency),
     self.facts, self.contingency_resume, self.contingency_reason, self.current_stage, self.instance, self.case_state, format_date(self.desition_date),
     self.case_termination, nilValue(self.cost_value_cents), nilValue(self.fail_value_cents), nilValue(self.fail_previ_cents),
     nilValue(self.payed_value_cents), format_date(self.payment_date), self.recovery, self.coactive_radicate, nilValue(self.coactive_value_cents),
     nilValue(self.garnish_value_cents), self.last_performance, format_date(self.last_performance_date),
     self.join_committee, format_date(self.committee_date), self.committee, nilValue(self.auth_value_cents),
     nilValue(self.reconcilie_value_cents), self.reason_conc, self.reason_inv, self.reserved_released, self.gubernatorial_way,
     format_date(self.answer_date), format_date(self.failed_notification_date), format_date(self.imp_date),
     self.tutelage_imp, format_date(self.objection_date_desition), format_date(self.objection_date_desition_notification),
     self.setence_type_second_company, format_date(self.date_notification_desacate), format_date(self.date_answer_desacate),
     format_date(self.date_notification_desition_desacate), self.sentence_type_desacate, self.policy_taker, self.contract]
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

  def get_user
    if self.user_id == nil
      "USUARIO NO EXISTE"
    else
      User.find(user_id).name
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
      "NO PRESENTA"
    else
      self.subprocess_class
    end
  end

  def get_departament
    if self.departament == nil
      "NO PRESENTA"
    else
      Departament.where(code: self.departament)
    end
  end

  def get_office_name
    if self.office_name == ""
      "PENDIENTE"
    elsif self.office_name == "OTRO"
      self.other_office_name
    else
      self.office_name
    end
  end

  def get_active_part
    if self.active_part == nil
      "NO APLICA"
    elsif self.active_part == ""
      "PENDIENTE"
    else
      self.active_part
    end
  end

  def get_passive_part
    if self.passive_part == nil
      "NO APLICA"
    elsif self.passive_part == ""
      "PENDIENTE"
    else
      self.passive_part
    end
  end

  def get_protection
    if self.protection == "NO APLICA" || self.protection == nil
      "NO APLICA"
    elsif self.protection == [""] || self.protection == ["", ""]
      "NO PRESENTA"
    elsif self.protection == "CUMPLIMIENTO"
      self.protection
    else
      self.protection[1..-1].join(" - ")
    end
  end

  def get_case_termination
    if self.case_termination == nil
      "NO APLICA"
    else
      self.case_termination
    end
  end

  def get_current_stage
    if self.current_stage == nil
      "NO APLICA"
    elsif self.current_stage == ""
      "PENDIENTE"
    else
      self.current_stage
    end
  end

  def get_link_type
    if self.link_type == nil
     "NO PRESENTA"
    elsif self.link_type == ""
     "NO PRESENTA"
    else
     self.link_type
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

  def nilValue(value)
    if value == nil
      0
    else
      value
    end
  end

  def nilPendiente(value)
    if value == nil
      "PENDIENTE"
    else
      value
    end
  end

  def self.get_all_departament
    Departament.select(:code, :name).all
    #CS.states(:co).sort_by {|_key, value| value}.to_h
  end

  def self.get_bog_departament
    {(CS.states(:co).assoc :DC).first => (CS.states(:co).assoc :DC).second.upcase}
  end

end
