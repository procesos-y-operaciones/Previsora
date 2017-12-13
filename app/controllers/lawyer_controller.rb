class LawyerController < ApplicationController

  def new
  end

  def search
    @processes = current_user.type_processes
  end

  def report

  end

end
