class SinistersController < ApplicationController
  before_action :set_sinister, only: [:show, :edit, :update, :destroy]

  # GET /sinisters
  # GET /sinisters.json
  def index
    @sinisters = Sinister.all
  end

  # GET /sinisters/1
  # GET /sinisters/1.json
  def show
  end

  # GET /sinisters/new
  def new
    @sinister = Sinister.new
  end

  # GET /sinisters/1/edit
  def edit
  end

  # POST /sinisters
  # POST /sinisters.json
  def create
    @sinister = Sinister.new(sinister_params)

    respond_to do |format|
      if @sinister.save
        format.html { redirect_to @sinister, notice: 'Sinister was successfully created.' }
        format.json { render :show, status: :created, location: @sinister }
      else
        format.html { render :new }
        format.json { render json: @sinister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sinisters/1
  # PATCH/PUT /sinisters/1.json
  def update
    respond_to do |format|
      if @sinister.update(sinister_params)
        format.html { redirect_to @sinister, notice: 'Sinister was successfully updated.' }
        format.json { render :show, status: :ok, location: @sinister }
      else
        format.html { render :edit }
        format.json { render json: @sinister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sinisters/1
  # DELETE /sinisters/1.json
  def destroy
    @sinister.destroy
    respond_to do |format|
      format.html { redirect_to sinisters_url, notice: 'Sinister was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sinister
      @sinister = Sinister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sinister_params
      params.fetch(:sinister, {})
    end
end
