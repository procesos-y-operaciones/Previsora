class TypeProcessesController < ApplicationController
  before_action :set_type_process, only: [:show, :edit, :update, :destroy]

  # GET /type_processes
  # GET /type_processes.json
  def index
    @type_processes = TypeProcess.all
  end

  # GET /type_processes/1
  # GET /type_processes/1.json
  def show
  end

  # GET /type_processes/new
  def new
    @type_process = TypeProcess.new
  end

  # GET /type_processes/1/edit
  def edit
  end

  # POST /type_processes
  # POST /type_processes.json
  def create
    @type_process = TypeProcess.new(type_process_params)

    respond_to do |format|
      if @type_process.save
        format.html { redirect_to @type_process, notice: 'Type process was successfully created.' }
        format.json { render :show, status: :created, location: @type_process }
      else
        format.html { render :new }
        format.json { render json: @type_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_processes/1
  # PATCH/PUT /type_processes/1.json
  def update
    respond_to do |format|
      if @type_process.update(type_process_params)
        format.html { redirect_to @type_process, notice: 'Type process was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_process }
      else
        format.html { render :edit }
        format.json { render json: @type_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_processes/1
  # DELETE /type_processes/1.json
  def destroy
    @type_process.destroy
    respond_to do |format|
      format.html { redirect_to type_processes_url, notice: 'Type process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_process
      @type_process = TypeProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_process_params
      params.require(:type_process).permit(:todo)
    end
end
