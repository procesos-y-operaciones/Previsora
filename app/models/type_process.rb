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
    if case_id_sise != "NO PRESENTA" && case_id_sise != "NO APLICA" && case_id_sise != "PENDIENTE" && TypeProcess.where(:case_id_sise => case_id_sise).present?
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
    if case_id_sise != "NO APLICA" && case_id_sise != "PENDIENTE" && TypeProcess.where(:case_id_sise => case_id_sise)[0].id != id
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

  def self.total_headers
    [
      'IDENTIFICADOR',  'ABOGADO INTERNO',  'RADICADO CORRESPONDENCIA',  'FECHA DE CREACION',  'APODERADO EN PREVISORA',  'FECHA DE ASIGNACION DEL APODERADO EN PREVISORA',
      'FECHA DE NOTIFICACION',  'IDENFICACION BIZAGI ACCESS PA',  'IDENTIFICACION SISE',  'IDENTIFICACION E-KOGUI',  'TIPO DE PROCESO',  'CLASE DE PROCESO',  'SUBCLASE DE PROCESO',
      'TIPO DE VINCULACION',  'PARTE ACTIVA',  'PARTE PASIVA',  'NUMERO DE RADICADO DEL PROCESO',  'NOMBRE DEL DESPACHO',  'DEPARTAMENTO',  'CIUDAD DONDE CURSA EL CASO',  'HECHOS',
      'FUENTE DEL LITIGIO',  'NUMERO DEL SINIESTRO',  'SINIESTRO',  'EJERCICIO',  'SUCURSAL DE LA POLIZA',  'RAMO COMERCIAL',  'AMPARO',  'POLIZA',  'TOMADOR DE LA POLIZA',
      'VALOR ASEGURADO',  'VALOR RESERVA INDEMNIZACIONES',  'RESERVA HONORARIOS',  'VALOR RESERVA INDEMNIZACIONES',  'VALOR PRETENSION - DETRIMENTO - ESTIMACION',  'VALOR CONTINGENCIA',
      'CALIFICACION DE LA CONTINGENCIA',  'RAZON DE LA CONTINGENCIA',  'RESUMEN DE LA CONTINGENCIA',  'TIPO DE REASEGURO',  'REASEGURO REPORTADO',  'VALOR REASEGURO',  'TIPO DE COASEGURO',
      'VALOR COASEGURO',  'TIPO DE MONEDA',  'VALOR DEL DOLAR',  'INSTANCIAS',  'ETAPA ACTUAL',  'ULTIMA ACTUACION',  'FECHA ULTIMA ACTUACION',  'ESTADO DEL CASO',  'INGRESA AL COMITE',
      'FECHA DE INGRESO AL COMITE',  'DECISION DEL COMITE',  'VALOR AUTORIZADO COMITE',  'VALOR CONCILIADO',  'RAZON DE NO CONCILIAR',  'RAZON DE INVIABILIDAD',  'FECHA DE LA DECISION',
      'TERMINACION DEL CASO',  'VALOR COSTAS',  'VALOR FALLO',  'VALOR FALLO PREVISORA',  'VALOR PAGADO PREVISORA',  'FECHA DE PAGO',  'PROCEDE RECOBRO',  'RADICACION COACTIVO',
      'VALOR COACTIVO',  'VALOR EMBARGO',  'RESERVA LIBERADA',  'TIPOLOGIA (COLJUEGOS)',  'FECHA DE CONTESTACION TUTELA',  'FECHA NOTIFICACION O FALLO',  'FECHA NOTIFICACION IMPUGNACION',
      'IMPUGNANTE',  'FECHA DECISION IMPUGNACION',  'FECHA DE NOTIFICACION DECISION IMPUGNACION',  'TIPO DE DECISION IMPUGNACION',  'FECHA NOTIFICACION INCIDENTE DESACATO',
      'FECHA DE CONTESTACION INCIDENTE DESACATO',  'FECHA NOTIFICACION DECISION INDIDENTE DESACATO',  'TIPO SENTENCIA INCIDENTE DESACATO',  'CONTRATO CONCESION',  'MAS POLIZA',
      'TIENE COSTAS A FAVOR',  'TIENE NUMERO DE RADICADO EN CORRESPONDENCIA',  'TIENE MAS POLIZAS',  'TIENE RADICACION DE COACTIVO',  'MAS SINIESTROS',  'REASEGURO CEDIDO',
      'MAS AMPAROS',  'OTRO NOMBRE DESPACHO',  'TIENE IMPUGNACION',  'TIENE DESACATO',  'IDENTIFICACION DEL USUARIO',  'VALOR RESERVA',  'NUMERO DE CASO ON-BASE'
    ]
  end

  def get_total_content
    h = [
      'id',  'internal_lawyer',  'correspondency_radicate',  'creation_date',  'attorny',  'attorny_date',  'notification_date',  'case_id_bap',  'case_id_sise',  'case_id_ekogui',
      'p_type',  'process_class',  'subprocess_class',  'link_type',  'active_part',  'passive_part',  'process_radicate',  'office_name',  'departament',  'city_case',  'facts',  'litigation_source',
      'number',  'sinister',  'exercise',  'branch_policy',  'branch_commercial',  'protection',  'policy_cents',  'policy_taker',  'ensurance_value_cents',  'provision_cents',  'reserved_fees_cents',
      'provision_cents',  'detritment_cents',  'contingency_value_cents',  'score_contingency',  'contingency_reason',  'contingency_resume',  'reinsurance_type',  'reinsurance_report',  'reinsurance_value_cents',
      'coensurance_type',  'coensurance_value_cents',  'money_type',  'dolar_value_cents',  'instance',  'current_stage',  'last_performance',  'last_performance_date',  'case_state',  'join_committee',  'committee_date',
      'committee',  'auth_value_cents',  'reconcilie_value_cents',  'reason_conc',  'reason_inv',  'desition_date',  'case_termination',  'cost_value_cents',  'fail_value_cents',  'fail_previ_cents',  'payed_value_cents',
      'payment_date',  'recovery',  'coactive_radicate',  'coactive_value_cents',  'garnish_value_cents',  'reserved_released',  'gubernatorial_way',  'answer_date',  'failed_notification_date',  'imp_date',  'tutelage_imp',
      'objection_date_desition',  'objection_date_desition_notification',  'setence_type_second_company',  'date_notification_desacate',  'date_answer_desacate',  'date_notification_desition_desacate',  'sentence_type_desacate',
      'contract',  'policies',  'has_costs',  'has_correspondency_radicate',  'has_more_polcies',  'has_coactive_radicate',  'sinisters',  'reensurance_gived_cents',  'more_protections',  'other_office_name',  'has_impug',
      'has_desacate',  'user_id',  'reserve_cents',  'case_onbase'
    ]
    self.attributes.values_at(*h)
  end

  def self.column_names_all
    [
      'IDENTIFICADOR','ABOGADO INTERNO', 'RADICADO CORRESPONDENCIA','FECHA DE CREACION',
      'APODERADO EN PREVISORA', 'FECHA DE ASIGNACION DEL APODERADO EN PREVISORA', 'FECHA DE NOTIFICACION',
      'IDENFICACION BIZAGI ACCESS PA', 'IDENTIFICACION SISE', 'IDENTIFICACION E-KOGUI','TIPO DE PROCESO',
      'CLASE DE PROCESO','SUBCLASE DE PROCESO', 'TIPO DE VINCULACION', 'PARTE ACTIVA','PARTE PASIVA',
      'NUMERO DE RADICADO DEL PROCESO','NOMBRE DEL DESPACHO','DEPARTAMENTO','CIUDAD DONDE CURSA EL CASO',
      'HECHOS','FUENTE DEL LITIGIO','NUMERO DEL SINIESTRO','SINIESTRO','EJERCICIO',
      'SUCURSAL DE LA POLIZA','RAMO COMERCIAL', 'AMPARO','POLIZA',
      'TOMADOR DE LA POLIZA', 'VALOR ASEGURADO', 'VALOR RESERVA INDEMNIZACIONES','RESERVA HONORARIOS',
      'VALOR PROVISION', 'VALOR PRETENSION - DETRIMENTO - ESTIMACION', 'VALOR CONTINGENCIA', 'CALIFICACION DE LA CONTINGENCIA',
      'RAZON DE LA CONTINGENCIA','RESUMEN DE LA CONTINGENCIA','TIPO DE REASEGURO', 'REASEGURO REPORTADO',
      'VALOR REASEGURO','TIPO DE COASEGURO','VALOR COASEGURO','TIPO DE MONEDA','VALOR DEL DOLAR',
      'INSTANCIAS','ETAPA ACTUAL','ULTIMA ACTUACION','FECHA ULTIMA ACTUACION','ESTADO DEL CASO',
      'INGRESA AL COMITE', 'FECHA DE INGRESO AL COMITE', 'DECISION DEL COMITE', 'VALOR AUTORIZADO COMITE','VALOR CONCILIADO',
      'RAZON DE NO CONCILIAR','RAZON DE INVIABILIDAD', 'FECHA DE LA DECISION','TERMINACION DEL CASO','VALOR COSTAS',
      'VALOR FALLO','VALOR FALLO PREVISORA','VALOR PAGADO PREVISORA', 'FECHA DE PAGO', 'PROCEDE RECOBRO',
      'RADICACION COACTIVO','VALOR COACTIVO','VALOR EMBARGO', 'RESERVA LIBERADA','TIPOLOGIA (COLJUEGOS)',
      'FECHA DE CONTESTACION TUTELA','FECHA NOTIFICACION O FALLO', 'FECHA NOTIFICACION IMPUGNACION',
      'IMPUGNANTE','FECHA DECISION IMPUGNACION', 'FECHA DE NOTIFICACION DECISION IMPUGNACION', 'TIPO DE DECISION IMPUGNACION',
      'FECHA NOTIFICACION INCIDENTE DESACATO', 'FECHA DE CONTESTACION INCIDENTE DESACATO','FECHA NOTIFICACION DECISION INDIDENTE DESACATO',
      'TIPO SENTENCIA INCIDENTE DESACATO','CONTRATO CONCESION'
    ]
  end

  def get_content_all
    [
      self.id, self.get_user, self.correspondency_radicate, self.creation_date,
      self.attorny, format_date(self.attorny_date), format_date(self.notification_date),
      self.case_id_bap, self.case_id_sise, self.case_id_ekogui, self.get_type_process,
      self.get_process_class, self.get_subprocess_class, self.get_link_type, self.get_active_part, self.get_passive_part,
      self.process_radicate, self.get_office_name, self.get_departament, self.city_case,
      self.facts, self.get_litigation_source, self.number, self.sinister + self.get_more_sinisters, self.exercise,
      self.get_branch_policy, self.get_branch_commercial, self.get_protection + self.get_more_protection, self.policy_cents.to_s + self.get_policies,
      self.get_policy_taker, nilValue(self.ensurance_value_cents), nilValue(self.reserve_cents), nilValue(self.reserved_fees_cents),
      nilValue(self.provision_cents), nilValue(self.detritment_cents), nilValue(self.contingency_value_cents), self.get_score_contingency,
      self.contingency_reason, self.contingency_resume, self.get_reinsurance_type, self.get_reinsurance_report,
      nilValue(self.reinsurance_value_cents), self.get_coensurance_type, nilValue(self.coensurance_value_cents), self.get_money_type, nilValue(self.dolar_value_cents),
      self.get_instance, self.get_current_stage, self.get_last_performance, format_date(self.last_performance_date),self.get_case_state,
      self.get_join_committee, format_date(self.committee_date), self.get_committee, nilValue(self.auth_value_cents), nilValue(self.reconcilie_value_cents),
      self.reason_conc, self.reason_inv, format_date(self.desition_date), self.get_case_termination, nilValue(self.cost_value_cents),
      nilValue(self.fail_value_cents), nilValue(self.fail_previ_cents), nilValue(self.payed_value_cents), format_date(self.payment_date), self.get_recovery,
      self.coactive_radicate, nilValue(self.coactive_value_cents), nilValue(self.garnish_value_cents), self.get_reserved_released, self.get_gubernatorial_way,
      format_date(self.answer_date), format_date(self.failed_notification_date), format_date(self.imp_date),
      self.tutelage_imp, format_date(self.objection_date_desition), format_date(self.objection_date_desition_notification), self.get_setence_type_second_company,
      format_date(self.date_notification_desacate), format_date(self.date_answer_desacate),format_date(self.date_notification_desition_desacate),
      self.get_sentence_type_desacate,  self.get_contract
    ]
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
      "NO PRESENTA"
    else
      self.subprocess_class
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

  def get_branch_commercial
    if self.branch_commercial == nil || self.branch_commercial == "NO APLICA"
      "NO APLICA"
    elsif self.branch_commercial == "NO PRESENTA"
      "NO PRESENTA"
    elsif self.branch_commercial == "0"
      "PENDIENTE"
    else
       BranchCommercial.where(num: self.branch_commercial)[0].name
    end
  end

  def get_branch_policy
    if self.branch_policy == nil || self.branch_policy == "NO APLICA"
      "NO APLICA"
    elsif self.branch_policy == "NO PRESENTA"
      "NO PRESENTA"
    elsif self.branch_policy == "0"
      "PENDIENTE"
    else
      BranchPolicy.where(num: self.branch_policy)[0].name
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
    if self.score_contingency == ""
      "NO PRESENTA"
    else
      self.score_contingency
    end
  end

  def get_protection
    if self.protection == "NO APLICA"
      "NO APLICA"
    elsif self.protection == [""] || self.protection == ["", ""]  || self.protection == nil || self.protection == "NO PRESENTA"
      "NO PRESENTA"
    elsif self.protection == "CUMPLIMIENTO"
      self.protection
    else
      self.protection[1..-1].join(" - ")
    end
  end

  def get_more_protection
    if self.get_protection == "NO PRESENTA" || self.get_protection == "NO APLICA"
      ""
    else
      if self.more_protections == "NO APLICA" || self.more_protections == nil
        " "
      else
        "-" + self.more_protections
      end
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

  def get_litigation_source
    if self.litigation_source == nil
      "NO APLICA"
    elsif self.litigation_source == ""
      "PENDIENTE"
    else
      self.litigation_source
    end
  end

  def get_instance
    if self.instance == nil
      "NO APLICA"
    elsif self.instance == ""
      "PENDIENTE"
    else
      self.instance
    end
  end

  def get_case_state
    if self.case_state == nil
      "NO APLICA"
    elsif self.case_state == ""
      "NO PRESENTA"
    else
      self.case_state
    end
  end

  def get_case_termination
    if self.case_termination == nil
      "NO APLICA"
    elsif self.case_termination == ""
      "NO PRESENTA"
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
    elsif self.reinsurance_type == ""
      "PENDIENTE"
    else
      self.reinsurance_type
    end
  end

  def get_coensurance_type
    if self.coensurance_type == nil
      "NO APLICA"
    elsif self.coensurance_type == ""
      "PENDIENTE"
    else
      self.coensurance_type
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

  def get_sinister
    #if self.sinister == "PEN"
  end

  def get_more_sinisters
    if self.sinisters == "PENDIENTE" || self.sinister == "NO APLICA"
      ""
    else
      " " + self.sinisters
    end
  end

  def get_policies
    if self.policies == "PENDIENTE"
      ""
    elsif self.policies == nil
      "NO APLICA"
    else
      " - " + self.policies
    end
  end

  def get_policy_taker
    if self.policy_taker == nil
      "NO APLICA"
    else
      self.policy_taker
    end
  end

  def get_contract
    if self.contract == nil
      "NO APLICA"
    else
      self.contract
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

  def get_office_name
    if self.office_name == ""
      "PENDIENTE"
    elsif self.office_name == "OTRO"
      self.other_office_name
    else
      self.office_name
    end
  end

  def self.get_all_departament
    CS.states(:co).sort_by {|_key, value| value}.to_h
  end

  def self.get_bog_departament
    {(CS.states(:co).assoc :DC).first => (CS.states(:co).assoc :DC).second.upcase}
  end

end
