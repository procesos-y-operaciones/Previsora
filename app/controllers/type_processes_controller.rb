class TypeProcessesController < ApplicationController
  before_action :set_type_process, only: [:show, :edit, :update, :destroy]

  # GET /type_processes
  # GET /type_processes.json
  def index
    @type_processes = TypeProcess.all
    respond_to do |format|
      format.html
      format.csv { send_data @type_processes.to_csv }
      format.xls { send_data @type_processes.to_csv }
    end
  end

  # GET /type_processes/1
  # GET /type_processes/1.json
  def show
  end

  # GET /type_processes/new
  def new
    @p_type = params[:p_type]
    @type_process = TypeProcess.new
  end

  def new_process
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
        format.html { redirect_to index_home_path, notice: 'Proceso creado correctamente.' }
        format.json { render :show, status: :created, location: @type_process }
      else
        format.html {
          if @type_process.p_type == 1
            redirect_to prejudicial_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 2
            redirect_to judicial_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 3
            redirect_to fiscal_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 4
            redirect_to administrative_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          elsif @type_process.p_type == 5
            redirect_to tutelage_new_path, :flash => { :error => @type_process.errors.full_messages.join(', ') }
          else
            render :new
          end
         }
        format.json { render json: @type_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_processes/1
  # PATCH/PUT /type_processes/1.json
  def update
    respond_to do |format|
      if @type_process.update(type_process_params)
        format.html { redirect_to @type_process, notice: 'Proceso actualizado correctamente.' }
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
      format.html { redirect_to type_processes_url, notice: 'Proceso borrado correctamente..' }
      format.json { head :no_content }
    end
  end

  private
    def set_type_process
      @type_process = TypeProcess.find(params[:id])
    end

    def type_process_params
      params.require(:type_process).permit(:user_id, :p_type, :process_class_id,
       :subprocess_class_id, :internal_lawyer_id)
    end
end
