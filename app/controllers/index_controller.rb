class IndexController < ApplicationController

  def home
    @user = current_user
    if @user.role == 1
      redirect_to
    elsif @user.role == 2
    elsif @user.role == 3
    else
    end
  end

  def lawyer
  end

  def coordinator
  end

  def administrator
  end

end
