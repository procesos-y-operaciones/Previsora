class CoordinatorController < ApplicationController

  before_action :set_user, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def edit
    @current = current_user
  end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice: 'Usuario actualizado correctamente.'
    else
      render :edit
    end
  end

  def management
    @user = current_user
    @search = User.ransack(params[:q])
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

  protected

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :document, :password, :password_confirmation, :role)
    end


end
