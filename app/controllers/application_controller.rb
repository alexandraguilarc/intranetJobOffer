class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    #Al ingresar un usuario debe ser redirigido a la vista de joboffers
    def after_sign_in_path_for(resource)
        joboffers_path
    end

    #Al cerrar session el usuario es redirigido a inicia sesión
    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
    end

    #Creamos método para verificar el tipo de usuario
    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
        redirect_to joboffers_path, notice: "You are not authorized to perform this action"
        end
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, images: []])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, images: []])
    end

end
