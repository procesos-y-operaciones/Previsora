# == Schema Information
#
# Table name: type_processes
#
#  id                                  :integer          not null, primary key
#  p_type                              :integer
#  correspondency_radicate             :string
#  case_id_bap                         :string
#  case_id_sise                        :string
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
#  coactive_radicate                   :string
#  policies                            :string
#  sinisters                           :string
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
#  committee_desition                  :string
#  tutelage_imp                        :string
#  date_notification_desacate          :date
#  date_answer_desacate                :date
#  date_notification_desition_desacate :date
#  auth_value_cents                    :integer          default(0), not null
#  auth_value_currency                 :string           default("USD"), not null
#  reinsurance_value_cents             :integer          default(0), not null
#  reinsurance_value_currency          :string           default("USD"), not null
#  reconcilie_value_cents              :integer          default(0), not null
#  reconcilie_value_currency           :string           default("USD"), not null
#  reason_conc                         :string
#  reason_inv                          :string
#  reinsurance_report                  :boolean          default(FALSE)
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

  validates     :p_type, :process_class_id, presence: true

  def self.column_names_all
    ["Id", "Tipo de proceso", "Clase de proceso", "Subclase de proceso",
    "Radicado correspodencia", "Identificación del caso (Bizagi, Acces, PA)",
    "Identificación del caso (SISE)", "Fecha de creación", "Tipo de vinculación",
    "Departamento", "Ciudad donde cursa el caso", "Sucursal de Póliza",
    "Fecha de notificación / vinculación", "Radicación del proceso", "Número",
    "Ejercicio", "Ramo comercial", "Número siniestro", "Apoderado Previsora",
    "Fecha de asignación apoderado", "Parte activa", "Parte pasiva", "Nombre del despacho",
    "Tipo de moneda", "Valor del dólar", "Valor pretensión / detrimento / estimación",
    "Valor asegurado", "Calificación de la contigencia", "Valor contingencia",
    "Razón contingencia", "Resumen contingencia", "Póliza", "Amparo", "Etapa actual",
    "Fuente de litigio", "Reserva", "Provisión", "Instancias", "Abogado interno",
    "Estado del caso", "Fecha decisión", "Terminación del caso", "Valor fallo decisión",
    "Valor pagado Previsora", "Fecha de consignación", "Reserva honorarios", "Valor coactivo",
    "Valor embargo", "Reaseguro", "Tipo de reaseguro", "Reaseguro cedido", "Última actuación",
    "Fecha última actuación", "Vía gubernativa (Coljuegos) Tiólogía", "Fecha notificación fallo",
    "Fecha notificación impugnación", "Impugnante tutela", "Tipo sentencia segunda instancia - a compañía",
    "Fecha notificación incidente de desacato", "Fecha de contestación indicende de desacato",
    "Fecha notificación desición incidente de desacato", "Tipo de sentencia incidente de desacato - a compañía",
    "Ingresa al comité", "Decisión comité", "Valor autorizado por el comité", "Razón de no conciliar",
    "Reserva liberada", "Tipo de coaseguro", "Valor fallo a cargo de previsora", "Número de radicación coactivo"]
  end

  def get_content_all
    [self.id, self.get_type_process]
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

end
