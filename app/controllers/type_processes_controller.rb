class TypeProcessesController < ApplicationController
  before_action :set_type_process, only: [:show, :edit, :update, :destroy]

  # GET /type_processes
  # GET /type_processes.json
  def index
    @type_processes = TypeProcess.all
  end

  # GET /type_processes/1
  # GET /type_processes/1.json
  def show
  end

  # GET /type_processes/new
  def new
    @type_process = TypeProcess.new
  end

  # GET /type_processes/1/edit
  def edit
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
        format.html { render :new }
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
      params.require(:type_process).permit(:p_type, :process_class_id, :correspondency_radicate,
          :case_id_bap, :case_id_sise, :creation_date, :link_type_id, :departament_id, :city_case_id,
          :branch_policy_id, :notification_date, :process_radicate, :number, :exercise, :branch_commercial_id,
          :sinister, :attorny, :attorny_date, :active_part, :passive_part, :money_type_id, :dolar_value, :detritment,
          :ensurance_value, :score_contingency_id, :contingency_value, :contingency_reason, :contingency_resume,
          :facts, :policy, :protection_id, :current_stage_id, :litigation_source_id, :reserved_fees, :instance_id,
          :desition_date, :case_termination_id, :fail_value, :payed_value, :payment_date, :garnish_value, :reinsurance_type_id,
          :reensurance_gived, :last_performance_date, :join_committee_id, :auth_value, :reason_conc, :reason_inv, :reserved_released_id)
    end
end
