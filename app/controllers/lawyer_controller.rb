class LawyerController < ApplicationController

  def new
  end

  def search
    @search = TypeProcess.ransack(params[:q])
    @processes = @search.result.paginate(page: params[:page], per_page: 5)
  end

  def report

  end

end
