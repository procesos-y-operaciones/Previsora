class IndexController < ApplicationController

  def home
    @user = current_user
    if @user.role == 1
      redirect_to index_lawyer_path
    elsif @user.role == 2
      redirect_to index_coordinator_path
    elsif @user.role == 3
      redirect_to index_asignator_path
    elsif @user.role == 4
      redirect_to index_administrator_path
    end
  end

  def lawyer
    if current_user.role != 1
      redirect_to root_path, notice: "No tienes acceso aquí."
    end
    @user = current_user
  end

  def coordinator
    if current_user.role != 2
      redirect_to root_path, notice: "No tienes acceso aquí."
    end
    @user = current_user
  end

  def asignator
    if current_user.role != 3
      redirect_to root_path, notice: "No tienes acceso aquí."
    end
    @user = current_user
  end

  def administrator
    if current_user.role != 4
      redirect_to root_path, notice: "No tienes acceso aquí."
    end
    @user = current_user
  end

end
