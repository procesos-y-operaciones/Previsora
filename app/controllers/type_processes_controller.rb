class TypeProcessesController < ApplicationController
  before_action :set_type_process, only: [:show, :edit, :update, :destroy]

  # GET /type_processes
  # GET /type_processes.json
  def index
    @search = TypeProcess.ransack(params[:q])
    @processes = @search.result
    respond_to do |format|
      format.html
      format.csv { send_data @processes.to_csv }
      format.xls { send_data @processes.to_csv }
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
    else
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
            redirect_to prejudicial_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 2
            redirect_to judicial_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 3
            redirect_to fiscal_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 4
            redirect_to administrative_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 5
            redirect_to tutelage_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          else
            render :new
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
      format.html { redirect_to type_processes_url, notice: 'Proceso borrado correctamente..' }
      format.json { head :no_content }
    end
  end

  private
    def set_type_process
      @type_process = TypeProcess.find(params[:id])
    end

    def type_process_params
      params.require(:type_process).permit(:user_id, :p_type, :process_class_id,
       :subprocess_class_id, :internal_lawyer_id, :correspondency_radicate, :case_id_bap,
       :case_id_sise, :creation_date, :link_type_id, :departament, :city_case,
       :litigation_source_id, :reinsurance_type_id, :reinsurance_report, :coensurance_type_id,
       :policy_cents, :number, :exercise, :branch_policy_id, :branch_commercial_id, :money_type_id,
       :dolar_value_cents, :sinister, :policies, :sinisters, :reserve_cents, :detritment_cents,
       :ensurance_value_cents, :contingency_value_cents, :notification_date, :process_radicate,
       :attorny, :attorny_date, :office_name, :active_part, :passive_part, :score_contingency_id,
       :contingency_reason, :contingency_resume, :facts, :instance_id, :case_state_id,
       :desition_date, :case_termination_id, :fail_value_cents, :fail_previ_cents,
       :payed_value_cents, :payment_date, :coactive_radicate, :coactive_value_cents,
       :garnish_value_cents, :last_performance_id, :last_performance_date, :reserved_released_id,
       :p_type_eq, :correspondency_radicate_cont, :case_id_bap_cont, :case_id_sise_cont,
       :city_case_id_eq, :objection_notification_date, :tutelage_imp, :setence_type_second_company_id,
       :date_notification_desacate, :date_answer_desacate, :sentence_type_desacate_id,
       :date_notification_desition_desacate, :gubernatorial_way_id, :current_stage_id,
       :reinsurance_value_cents, :reensurance_gived_cents, :join_committee_id, :committee_id,
       :auth_value_cents, :reason_conc, :reason_inv, :reserved_fees_cents)
    end
end
