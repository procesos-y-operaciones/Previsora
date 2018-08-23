class SecretsController < ApplicationController

  before_action :set_type_process, only: [:show, :edit]

  def new
    @secret = TypeProcess.new
    @secret.creation_date = Date.today
  end

  def edit
  end

  def index
    @search = TypeProcess.get_laboral.ransack(params[:q])
    @report = @search.result
    @processes = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end

    respond_to do |format|
      format.html
      format.xlsx { response.headers['Content-Disposition'] = "attachment; filename=#{Date.today.to_s}.xlsx" }
    end
  end

  def show
  end

  private
    def set_type_process
      @type_process = TypeProcess.find(params[:id])
    end

    def type_process_params
      params.require(:type_process).permit(:user_id, :p_type, :process_class,
       :subprocess_class, :internal_lawyer, :correspondency_radicate, :case_id_bap,
       :case_id_sise, :creation_date, :link_type, :departament, :city_case,
       :litigation_source, :reinsurance_type, :reinsurance_report, :coensurance_type,
       :policy_cents, :number, :exercise, :branch_policy, :branch_commercial, :money_type,
       :dolar_value_cents, :sinister, :reserve_cents, :detritment_cents,
       :ensurance_value_cents, :contingency_value_cents, :notification_date, :process_radicate,
       :attorny, :attorny_date, :office_name, :active_part, :passive_part, :score_contingency,
       :contingency_reason, :contingency_resume, :facts, :instance, :case_state,
       :desition_date, :case_termination, :fail_value_cents, :fail_previ_cents,
       :payed_value_cents, :payment_date, :coactive_radicate, :coactive_value_cents,
       :garnish_value_cents, :last_performance, :last_performance_date, :reserved_released,
       :correspondency_radicate_cont, :case_id_bap_cont, :case_id_sise_cont,
       :objection_notification_date, :tutelage_imp, :setence_type_second_company_id,
       :date_notification_desacate, :date_answer_desacate, :sentence_type_desacate,
       :date_notification_desition_desacate, :gubernatorial_way, :current_stage,
       :reinsurance_value_cents, :reensurance_gived_cents, :join_committee, :committee,
       :auth_value_cents, :reason_conc, :reason_inv, :reserved_fees_cents, :case_onbase,
       :internal_lawyer, :case_id_ekogui, :coensurance_value_cents, {:protection => []},
       :provision_cents, :cost_value_cents, :committee_date, :reconcilie_value_cents,
       :recovery, :answer_date, :failed_notification_date, :imp_date, :objection_date_desition,
       :objection_date_desition_notification, :setence_type_second_company, :other_office_name,
       :more_protections, :policy_taker, :contract, :reserve_cents_modify, :reserve_cents_total,
       :reserve_cents_date, :reserved_fees_cents_modify, :reserved_fees_cents_total, :reserved_fees_cents_date,
       :state, :has_correspondency_radicate, :document_active_part, :document_passive_part, :internal_created, :internal_updated,
       sinisters_attributes: Sinister.attribute_names.map(&:to_sym).push(:_destroy),
       policies_attributes: Policy.attribute_names.map(&:to_sym).push(:_destroy)
     )
    end

end
