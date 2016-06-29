# frozen_string_literal: true
class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth_hash(auth_hash)
    eve_character_information = EveCrest.character(user.character_id)
    User.update_from_character_info(user.id, eve_character_information)
    session[:user_id] = user.id
    session[:user_token] = auth_hash['credentials']['token']
    redirect_to user
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
