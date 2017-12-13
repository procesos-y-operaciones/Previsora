class TutelageController < ApplicationController

  before_action :set_tutelage, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @tutelage = TypeProcess.new
  end

  def edit
  end

  def create
    @tutelage = TypeProcess.new
    if @tutelage.save
      redirect_to index_home_path, notice: 'Tutela creada satisfactoriamente.'
    else
      render :new
    end
  end

  def update
    if @tutelage.update(tutelage_params)
      redirect_to index_home_path, notice: 'Tutela actualizada satisfactoriamente.'
    else
      render :edit
    end
  end

  def destroy
    @tutelage.destroy
    redirect_to index_home_path, notice: 'Tutela borrada correctamente.'
  end

  private
    def set_tutelage
      @tutelage = TypeProcess.find(params[:id])
    end

    def tutelage_params
      params.require(:type_process).permit(:process_class_id, :correspondency_radicate, :case_id_sise,
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
