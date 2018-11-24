class ColjuegosController < ApplicationController

  before_action :set_coljuegos, only: [:show, :edit, :update, :destroy, :old]

  def show
  end

  def new
    @coljuegos = TypeProcess.new
    @coljuegos.creation_date = Date.today
    @coljuegos.internal_created = current_user.name
  end

  def edit
    if @coljuegos.state != "REGISTRO NUEVO MIGRACION LITISOFT"
      redirect_to coljuegos_old_path(@coljuegos)
    end
  end

  def old
  end

  def create
    @coljuegos = TypeProcess.new
    if @coljuegos.save
      redirect_to index_home_path, notice: 'Proceso coljuegos creado satisfactoriamente.'
    else
      render :new
    end
  end

  def update
    if @coljuegos.update(judicial_params)
      redirect_to index_home_path, notice: 'Proceso coljuegos actualizado satisfactoriamente.'
    else
      render :edit
    end
  end

  def destroy
    @coljuegos.destroy
    redirect_to index_home_path, notice: 'Proceso coljuegos borrado correctamente.'
  end

  private
    def set_coljuegos
      @coljuegos = TypeProcess.find(params[:id])
    end

    def coljuegos_params
      params.require(:type_process).permit(:user_id, :p_type, :process_class_id,
        :subprocess_class_id,
        :correspondency_radicate, :case_id_sise,
        :creation_date, :link_type_id, :departament_id, :city_case_id, :branch_policy_id, :notification_date,
        :process_radicate, :number, :exercise, :branch_commercial_id, :sinister, :attorny, :attorny_date,
        :active_part, :passive_part, :branch_commercial_id, :money_type_id, :dolar_value, :detritment,
        :ensurance_value, :score_contingency_id, :contingency_value, :contingency_reason, :contingency_resume,
        :facts, :policy, :protection_id, :current_stage_id, :litigation_source_id, :reserved_fees, :instance_id,
        :internal_lawyer_id, :case_state_id, :desition_date, :case_termination_id, :fail_value, :payed_value,
        :payment_date, :reserved_fees, :garnish_value, :reinsurance_type_id, :reensurance_gived, :last_performance_date,
        :join_committee_id, :committee_id, :auth_value, :reason_conc, :reason_inv, :reserved_released_id,
        :office_name_id, :dolar_value_cents, :detritment_cents, :ensurance_value_cents, :contingency_value_cents, :policy_cents,
        :reserve_cents, :fail_value_cents, :payed_value_cents, :reserved_fees_cents, :coactive_value_cents, :garnish_value_cents,
        :reensurance_gived_cents)
    end

end
