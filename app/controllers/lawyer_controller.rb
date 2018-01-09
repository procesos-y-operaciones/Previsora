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
    respond_to do |format|
      format.html
      format.csv { send_data @report.to_csv }
      format.xls { send_data @report.to_csv }
    end
  end

  def report

  end

end
