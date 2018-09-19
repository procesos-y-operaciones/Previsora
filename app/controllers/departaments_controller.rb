class DepartamentsController < ApplicationController
  before_action :set_departament, only: [:show, :edit, :update, :destroy]

  def index
    @search = Departament.all.ransack(params[:q])
    @departaments = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
  end

  def show
  end

  def new
    @departament = Departament.new
  end

  def edit
  end

  def create
    @departament = Departament.new(departament_params)
    respond_to do |format|
      if @departament.save
        format.html { redirect_to departaments_path, notice: 'Departamento creado correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @departament.update(departament_params)
        format.html { redirect_to departaments_path, notice: 'Departamento actualizado correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @departament.destroy
    respond_to do |format|
      format.html { redirect_to departaments_path, notice: 'Departamento borrado correctamente.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departament
      @departament = Departament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departament_params
      params.require(:departament).permit(:name, :code)
    end
end
