class IndexController < ApplicationController

  def home
    @user = current_user
    if @user.role == 1
      redirect_to index_lawyer_path
    elsif @user.role == 2
      redirect_to index_coordinator_path
    elsif @user.role == 3
      redirect_to index_administrator_path
    end
  end

  def lawyer
    @user = current_user
  end

  def coordinator
    @user = current_user
  end

  def administrator
    @user = current_user
  end

end
