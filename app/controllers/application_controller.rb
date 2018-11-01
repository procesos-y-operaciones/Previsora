class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  #before_action :configure_permitted_parameters, if: :devise_controller?

  def cities
    #render json: CS.cities(params[:state], :co).to_json
    render json: CityCase.get_all.order(name: :asc).where(departament: params[:state]).to_json
  end

  def offices
    @parameters = params[:name].split(",")
    if @parameters[2] == "SUPERINTENDENCIA" || @parameters[2] == "CORTE SUPREMA"
      render json: OfficeName.select(:id, :name).order(name: :asc).where("name like ?", "%#{@parameters[2]}%")
    elsif @parameters[2] == "CONSEJO"
      render json: OfficeName.select(:id, :name).order(name: :asc).where("name like ? and like ?", "%#{@parameters[2]}%", "%#{@parameters[3]}%")
    else
      render json: OfficeName.select(:id, :name).order(name: :asc).where(
        "name like ? or name like ?",
        "%#{@parameters[2]}% %#{@parameters[3]}% %#{@parameters[0]}%", "%#{@parameters[2]}% %#{@parameters[3]}% %#{@parameters[1]}%",
      ).to_json
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:document])
    end

end
