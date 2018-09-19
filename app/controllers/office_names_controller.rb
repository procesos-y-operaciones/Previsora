class OfficeNamesController < ApplicationController
  before_action :set_office_name, only: [:show, :edit, :update, :destroy]

  def index
    @search = OfficeName.all.ransack(params[:q])
    @office_names = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
  end

  def show
  end

  def new
    @office_name = OfficeName.new
  end

  def edit
  end

  def create
    @office_name = OfficeName.new(office_name_params)
    respond_to do |format|
      if @office_name.save
        format.html { redirect_to office_names_path, notice: 'Despacho creado correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @office_name.update(office_name_params)
        format.html { redirect_to office_names_path, notice: 'Despacho actualizado correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @office_name.destroy
    respond_to do |format|
      format.html { redirect_to office_names_path, notice: 'Despacho borrado correctamente.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_name
      @office_name = OfficeName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_name_params
      params.require(:office_name).permit(:name, :code)
    end
end
