class CityCasesController < ApplicationController
  before_action :set_city_case, only: [:show, :edit, :update, :destroy]

  def index
    @search = CityCase.get_all.ransack(params[:q])
    @city_cases = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
  end

  def show
  end

  def new
    @city_case = CityCase.new
  end

  def edit
  end

  def create
    @city_case = CityCase.new(city_case_params)
    respond_to do |format|
      if @city_case.save
        format.html { redirect_to city_cases_path, notice: 'Ciudad / Municipio creado correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @city_case.update(city_case_params)
        format.html { redirect_to city_cases_path, notice: 'Ciudad / Municipio actualizado correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @city_case.destroy
    respond_to do |format|
      format.html { redirect_to city_cases_path, notice: 'Ciudad / Municipio borrado correctamente.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_case
      @city_case = CityCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_case_params
      params.require(:city_case).permit(:name, :code, :departament)
    end
end
