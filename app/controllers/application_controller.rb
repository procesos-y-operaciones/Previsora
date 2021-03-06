class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  #before_action :configure_permitted_parameters, if: :devise_controller?

  def cities
    #render json: CS.cities(params[:state], :co).to_json
    render json: CityCase.select(:id, :name).where(departament: params[:state]).to_json
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:document])
    end

end
