class Users::RegistrationsController < Devise::RegistrationsController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  skip_before_action :require_no_authentication, only: [:new, :create]


  # GET /resource/sign_up
  def new
    @user = User.new
  end

  # POST /resource
  def create
   @user = User.new(user_params)
   if @user.save
     redirect_to root_path
   else
     redirect_to root_path, alert: 'Ya existe un usuario con este documento de identidad.'
   end
  end

  # GET /resource/edit
  def edit
  end

  # PUT /resource
  def update
    if @user.update(type_process_params)
      redirect_to root_path, notice: 'Usuario actualizado correctamente.'
    else
      render :edit
    end
  end

  # DELETE /resource
  def destroy
    if @user.type_processes == []
      @user.destroy
      redirect_to root_path, notice: 'Usuario borrado correctamente.'
    else
      redirect_to coordinator_management_path, notice: 'Debes eliminar todos los procesos de este usuario para poder borrarlo.'
    end
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :document, :password, :password_confirmation, :role, :charge)
    end

    # If you have extra params to permit, append them to the sanitizer.
    def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    end

    # If you have extra params to permit, append them to the sanitizer.
    def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    end

    # The path used after sign up.
    def after_sign_up_path_for(resource)
     super(resource)
    end

    # The path used after sign up for inactive accounts.
    def after_inactive_sign_up_path_for(resource)
     super(resource)
    end

end
