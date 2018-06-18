class TypeProcessesController < ApplicationController

  before_action :set_type_process, only: [:show, :edit, :update, :destroy]

  # GET /type_processes
  # GET /type_processes.json
  def index

    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end

    if params[:q] == nil || params[:q]["creation_date_gteq"] == nil
      @date_from = "01-01-1980"
    else
      @date_from = params[:q]["creation_date_gteq"]
    end

    if params[:q] == nil || params[:q]["creation_date_lteq"] == nil
      @date_till = Date.today
    else
      @date_till = params[:q]["creation_date_lteq"]
    end

    @search = TypeProcess.ransack(params[:q])
    @processes = @search.result
    respond_to do |format|
      format.html
      format.csv { send_data @processes.to_csv }
      format.xls { response.headers['Content-Disposition'] = "attachment; filename=#{Date.today.to_s}.xls" }
    end
  end

  # GET /type_processes/1
  # GET /type_processes/1.json
  def show
  end

  # GET /type_processes/new
  def new
    @type_process = TypeProcess.new
  end

  def new_process
    @type_process = TypeProcess.new
  end

  # GET /type_processes/1/edit
  def edit
    if current_user.role == 3 || current_user.type_processes.exists?(id: @type_process.id)
      case @type_process.p_type
      when 1
        redirect_to edit_prejudicial_path(@type_process.id)
      when 2
        redirect_to edit_judicial_path(@type_process.id)
      when 3
        redirect_to edit_fiscal_path(@type_process.id)
      when 4
        redirect_to edit_administrative_path(@type_process.id)
      when 5
        redirect_to edit_tutelage_path(@type_process.id)
      end
    else
      redirect_to root_path, notice: "No puedes acceder a esto."
    end
  end

  # POST /type_processes
  # POST /type_processes.json
  def create
    @type_process = TypeProcess.new(type_process_params)
    respond_to do |format|
      if @type_process.save
        format.html { redirect_to index_home_path, notice: 'Proceso creado correctamente.' }
        format.json { render :show, status: :created, location: @type_process }
      else
        format.html {
          if @type_process.p_type == 1
            redirect_to new_prejudicial_path, :flash => { :alert => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 2
            redirect_to new_judicial_path, :flash => { :alert => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 3
            redirect_to new_fiscal_path, :flash => { :alert => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 4
            redirect_to new_administrative_path, :flash => { :alert => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 5
            redirect_to new_tutelage_path, :flash => { :alert => @type_process.errors.full_messages.join(', ') }
          end
         }
        format.json { render json: @type_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_processes/1
  # PATCH/PUT /type_processes/1.json
  def update
    respond_to do |format|
      if @type_process.update(type_process_params)
        format.html { redirect_to @type_process, notice: 'Proceso actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @type_process }
      else
        format.html { render :edit }
        format.json { render json: @type_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_processes/1
  # DELETE /type_processes/1.json
  def destroy
    @type_process.destroy
    respond_to do |format|
      format.html { redirect_to asignator_search_path, notice: 'Proceso borrado correctamente..' }
      format.json { head :no_content }
    end
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
       :dolar_value_cents, :sinister, :policies, :sinisters, :reserve_cents, :detritment_cents,
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
       :more_protections, :policy_taker, :contract)
    end
end
