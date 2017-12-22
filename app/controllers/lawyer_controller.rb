class LawyerController < ApplicationController

  def new
  end

  def search
    @search = TypeProcess.search(params[:q])
    @processes = @search.result.paginate(page: params[:page], per_page: 15)
  end

  def report

  end

end
