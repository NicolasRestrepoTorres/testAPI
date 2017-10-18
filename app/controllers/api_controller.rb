class ApiController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :require_login
  def require_login
    authenticate_token || render_unauthorized("No se ha logueado")
  end

  def current_user
    @current_user ||= authenticate_token
  end

  protected

  def render_unauthorized(message)
    errors = { errors: [ { detail: message } ] }
    render json: errors, status: :unauthorized
  end

  private

  def authenticate_token
    authenticate_with_http_token do |token, options|
      puts User.find_by(token: token).nil?
    end
  end 
end
