class SessionsController < ApplicationController
  def create
    puts auth_hash
    @user = User.find_or_create_from_auth_hash(auth_hash)
    current_user = @user
    redirect_to @user
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
