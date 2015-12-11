class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_tutor

  def current_tutor
    @current_tutor ||= Tutor.find_by(id: session[:tutor_id])
  end
  

end
