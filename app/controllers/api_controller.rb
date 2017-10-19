class ApiController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :require_login
  def require_login
    authenticate_token || render_unauthorized("You have to login through /login")
  end



  protected

  def render_unauthorized(message)
    errors = { errors: [ { detail: message } ] }
    render json: errors, status: :unauthorized
  end

  private

  def authenticate_token
    authenticated = false
    authenticate_with_http_token do |token, options|
      authenticated = true unless User.find_by(token: token).nil?
    end
    authenticated
  end 
end
