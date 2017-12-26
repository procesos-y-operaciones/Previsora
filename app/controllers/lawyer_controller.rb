class LawyerController < ApplicationController

  def new
  end

  def search
    @search = TypeProcess.ransack(params[:q])
    @report = @search.result
    @processes = @search.result.paginate(page: params[:page], per_page: 5)
    respond_to do |format|
      format.html
      format.csv { send_data @report.to_csv }
      format.xls { send_data @report.to_csv }
    end
  end

  def report

  end

end
