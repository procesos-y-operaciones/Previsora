class AsignatorController < ApplicationController

  before_action :verificate
  before_action :set_type_process, only: [:translate]

  def search
    @search = TypeProcess.get_all.ransack(params[:q])
    @report = @search.result
    @processes = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
  end

  def report
    @search = TypeProcess.get_all.ransack(params[:q])
    @report = @search.result
    @processes = @search.result.paginate(page: params[:page], per_page: 10)

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

    respond_to do |format|
      format.html
      format.csv { send_data @report.to_csv }
      format.xlsx { response.headers['Content-Disposition'] = "attachment; filename=#{Date.today.to_s}.xlsx" }
    end
  end

  def asignate
    @number = params[:per_page] || 100
    @search = TypeProcess.get_all.ransack(params[:q])
    @report = @search.result
    @processes = @search.result.paginate(page: params[:page], per_page: @number)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
  end

  def translate
    @type_processes.each do |p|
      p.update(user_id: @user.id, internal_lawyer: @user.name)
    end
    redirect_to asignator_asignate_path, notice: "Registro(s) trasladado(s) correctamente."
  end

  protected

    def set_type_process
      @user = User.find(params[:user_id])
      if params[:processes_ids] == nil
        redirect_to asignator_asignate_path, alert: "Debes seleccionar al menos un registro poder para trasladarlo."
      else
        @type_processes = TypeProcess.find(params[:processes_ids])
      end
    end

    def type_process_params
      params.permit(:user_id, processes_ids: [])
    end

    def verificate
      if current_user.role != 3
        redirect_to root_path, alert: "No tienes acceso aquí."
      end
    end

end
