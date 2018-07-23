class AttorniesController < ApplicationController
  before_action :set_attorny, only: [:show, :edit, :update, :destroy]

  # GET /attornies
  # GET /attornies.json
  def index
    @search = Attorny.all.ransack(params[:q])
    @attornies = @search.result.paginate(page: params[:page], per_page: 10)
    if params[:page] == nil
      @page = 0
    else
      @page = 10 * (params[:page].to_i - 1)
    end
  end


  # GET /attornies/1
  # GET /attornies/1.json
  def show
  end

  # GET /attornies/new
  def new
    @attorny = Attorny.new
  end

  # GET /attornies/1/edit
  def edit
  end

  # POST /attornies
  # POST /attornies.json
  def create
    @attorny = Attorny.new(attorny_params)

    respond_to do |format|
      if @attorny.save
        format.html { redirect_to @attorny, notice: 'Attorny was successfully created.' }
        format.json { render :show, status: :created, location: @attorny }
      else
        format.html { render :new }
        format.json { render json: @attorny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attornies/1
  # PATCH/PUT /attornies/1.json
  def update
    respond_to do |format|
      if @attorny.update(attorny_params)
        format.html { redirect_to @attorny, notice: 'Attorny was successfully updated.' }
        format.json { render :show, status: :ok, location: @attorny }
      else
        format.html { render :edit }
        format.json { render json: @attorny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attornies/1
  # DELETE /attornies/1.json
  def destroy
    @attorny.destroy
    respond_to do |format|
      format.html { redirect_to attornies_url, notice: 'Attorny was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attorny
      @attorny = Attorny.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attorny_params
      params.require(:attorny).permit(:name, :code)
    end
end
