class LawyerController < ApplicationController

  def new
  end

  def search
    @processes = current_user.type_processes.paginate(page: params[:page], per_page: 10)
  end

  def report

  end

end
