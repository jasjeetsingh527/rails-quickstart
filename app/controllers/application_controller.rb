class ApplicationController < ActionController::Base
  class UnauthorizedAccess < StandardError; end

  protect_from_forgery with: :exception

  # => rescue the custom exception
  rescue_from UnauthorizedAccess, with: :render_invalid_access

   # => Authenticate a user token sent from apps
   # => to authenticate in any action call this callback using authenticate!
  def authenticate!
    raise UnauthorizedAccess, 'invalid access token' unless current_user
  end


  # =>  Used for render an error message if token is not valid customize as per requirement
  def render_invalid_access
    render json: { 'error' => {'message' => 'Invalid access token', 'code' => 301 } }
  end

  # => return current user if the token is valid
  # => use access_token as parameter
  def current_user
    return @current_user if @current_user.present?
    user = User.find_by(access_token: params.delete(:access_token))
    if user.present?
      @current_user = user
    else
      false
    end
  end


end
