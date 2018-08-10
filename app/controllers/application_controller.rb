class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  #before_action :configure_permitted_parameters, if: :devise_controller?

  def cities
    render json: CityCase.select(:id, :code, :name).order(name: :asc).where(departament: params[:state]).to_json
  end

  def offices
    @parameters = params[:name].split(",")
    render json: OfficeName.select(:id, :name).order(name: :asc).where(
      "name like ? and name like ? and name like ? or name like ? and name like ? and name like ?",
      "%#{@parameters[0]}%", "%#{@parameters[2]}%", "%#{@parameters[3]}%", "%#{@parameters[1]}%", "%#{@parameters[2]}%", "%#{@parameters[3]}%",
    ).to_json
end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:document])
    end

end
