class LawyerController < ApplicationController

  def new
  end

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

  def report
    @search = current_user.type_processes.ransack(params[:q])
    @report = @search.result
    @processes = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
    respond_to do |format|
      format.html
      format.csv { send_data @report.to_csv }
      format.xls { send_data @report.to_csv(params[:q]["creation_date_gteq"], params[:q]["creation_date_lteq"], col_sep: "\t") }
    end
  end

end
