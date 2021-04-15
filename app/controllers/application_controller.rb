class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
    # 管理者側　バリデーション
  def authenticate_admin
    if current_admin == nil
      redirect_to new_admin_session_path
    end
  end
  
  # 会員側　バリデーション
  def authenticate_user
    if current_user == nil
      redirect_to new_user_session_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
