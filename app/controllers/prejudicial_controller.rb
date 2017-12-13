class PrejudicialController < ApplicationController

  before_action :set_prejudicial, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @prejudicial = TypeProcess.new
  end

  def edit
  end

  def create
    @prejudicial = TypeProcess.new
    if @prejudicial.save
      redirect_to index_home_path, notice: 'Proceso prejudicial creado satisfactoriamente.'
    else
      render :new
    end
  end

  def update
    if @prejudicial.update(prejudicial_params)
      redirect_to index_home_path, notice: 'Proceso prejudicial actualizado satisfactoriamente.'
    else
      render :edit
    end
  end

  def destroy
    @prejudicial.destroy
    redirect_to index_home_path, notice: 'Proceso prejudicial borrado correctamente.'
  end

  private
    def set_prejudicial
      @prejudicial = TypeProcess.find(params[:id])
    end

    def prejudicial_params
      params.require(:type_process).permit()
    end

end
