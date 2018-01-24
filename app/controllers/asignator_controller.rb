class AsignatorController < ApplicationController

  before_action :set_type_process, only: [:translate]

  def search
    @search = TypeProcess.ransack(params[:q])
    @report = @search.result
    @processes = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
  end

  def asignate
    @processes = TypeProcess.all
  end

  def translate
    @type_processes.each do |p|
      p.update(user_id: @user.id, internal_lawyer: @user.name)
    end
    redirect_to asignator_asignate_path, notice: "Procesos trasladados correctamente."
  end

  private

    def set_type_process
      @user = User.find(params[:user_id])
      if params[:processes_ids] == nil
        redirect_to asignator_asignate_path, alert: "Debes seleccionar casos poder para trasladarlos."
      else
        @type_processes = TypeProcess.find(params[:processes_ids])
      end
    end

    def type_process_params
      params.permit(:user_id, processes_ids: [])
    end

end
