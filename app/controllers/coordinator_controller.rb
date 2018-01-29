class CoordinatorController < ApplicationController

  before_action :verificate, except: [:edit, :update]
  before_action :set_user, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def edit
    if @user.id == current_user.id || current_user.role == 2
      @current = current_user
    else
      redirect_to root_path, alert: "No tienes acceso aquí."
    end
  end

  def update
    if @user.id == current_user.id || current_user.role == 2
      if @user.update(user_params)
        redirect_to root_path, notice: 'Usuario actualizado correctamente.'
      else
        redirect_to coordinator_edit_path, alert: @user.errors.full_messages.join(', ')
      end
    else
      redirect_to root_path, alert: "No tienes acceso aquí."
    end
  end

  def management
    @user = current_user
    @search = User.order(:name).ransack(params[:q])
    @report = @search.result
    @users = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
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

  def destroy
    if @user.type_processes == []
      @user.destroy
      redirect_to root_path, notice: 'Usuario borrado correctamente.'
    else
      redirect_to coordinator_management_path, notice: 'Debes eliminar todos los procesos de este usuario para poder borrarlo.'
    end
  end

  def files
    @files = Dir.glob("#{Rails.root}/public/files/*")
  end

  def download_file
    @file = params[:file]
    send_file(
      "#{Rails.root}/public/files/#{@file}",
      filename: @file,
      type: "application/txt"
    )
  end

  def report
    @search = TypeProcess.ransack(params[:q])
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
      format.xls { send_data @report.to_csv(@date_from, @date_till, col_sep: "\t"), filename: Date.today.to_s+'.xls' }
    end
  end

  protected

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :document, :password, :password_confirmation, :role)
    end

    def verificate
      if current_user.role != 2
        redirect_to root_path, alert: "No tienes acceso aquí."
      end
    end


end
