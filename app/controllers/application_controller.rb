# frozen_string_literal: true
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(session[:user_id])
  end

  protected

  def eve_character_info
    @eve_character_info ||= EVECharacterInfo.from_ingame_headers(request.headers)
  end
end
