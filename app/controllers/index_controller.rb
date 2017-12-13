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
  end

  def coordinator
  end

  def administrator
  end

end
