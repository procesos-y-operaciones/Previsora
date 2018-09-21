class AdministratorController < ApplicationController

  before_action :verificate

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

    @report_type = params[:q].nil? ? "" : params[:q]["p_type_eq"]

    respond_to do |format|
      format.html
      format.csv { send_data @report.to_csv }
      format.xlsx {
        response.headers['Content-Disposition'] = "attachment; filename=#{Date.today.to_s}.xlsx"
      }
    end
  end

  protected

    def verificate
      if current_user.role != 4
        redirect_to root_path, alert: "No tienes acceso aquí."
      end
    end

end
