class PrejudicialController < ApplicationController

  before_action :set_prejudicial, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @prejudicial = TypeProcess.new
    @prejudicial.creation_date = Date.today
  end

  def edit
  end

  def create
    @prejudicial = TypeProcess.new
    if @prejudicial.save
      redirect_to index_home_path, notice: 'Proceso prejudicial creado satisfactoriamente.'
    else
      render :new
    end
  end

  def update
    if @prejudicial.update(prejudicial_params)
      redirect_to index_home_path, notice: 'Proceso prejudicial actualizado satisfactoriamente.'
    else
      render :edit
    end
  end

  def destroy
    @prejudicial.destroy
    redirect_to index_home_path, notice: 'Proceso prejudicial borrado correctamente.'
  end

  private
    def set_prejudicial
      @prejudicial = TypeProcess.find(params[:id])
    end

    def prejudicial_params
      params.require(:type_process).permit(:user_id, :p_type, :process_class_id, :correspondency_radicate, :case_id_sise,
        :creation_date, :link_type_id, :departament_id, :city_case_id, :branch_policy_id, :notification_date,
        :process_radicate, :number, :exercise, :branch_commercial_id, :sinister, :attorny, :attorny_date,
        :active_part, :passive_part, :branch_commercial_id, :money_type_id, :dolar_value, :detritment,
        :ensurance_value, :score_contingency_id, :contingency_value, :contingency_reason, :contingency_resume,
        :facts, :policy, :protection_id, :current_stage_id, :litigation_source_id, :reserved_fees, :instance_id,
        :internal_lawyer_id, :case_state_id, :desition_date, :case_termination_id, :fail_value, :payed_value,
        :payment_date, :reserved_fees, :garnish_value, :reinsurance_type_id, :reensurance_gived, :last_performance_date,
        :join_committee_id, :committee_id, :auth_value, :reason_conc, :reason_inv, :reserved_released_id)
    end

end
