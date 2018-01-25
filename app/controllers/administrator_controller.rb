class AdministratorController < ApplicationController

  before_action :verificate

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

  protected

    def verificate
      if current_user.role != 4
        redirect_to root_path, notice: "No tienes acceso aquí."
      end
    end

end
