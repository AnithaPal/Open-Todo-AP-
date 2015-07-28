class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def permission_denied_error
    error(403, "Permission Denied!")
  end

  def error(status, message=' Something went wrong')
    response = {
      response_type: "ERROR",
      message: message
    }

    render json: response.to_json, status: status 
  end

  private

  def authenticated?
    authenticate_or_request_with_http_basic do |username, password|
      user = User.find_by(username: username)
      User.where(username: username, password_hash: BCrypt::Engine.hash_secret(password, user.password_salt)).present?
    end
  end

end