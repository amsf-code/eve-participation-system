class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @fleets = Fleet.where(user_id: params[:id]).find_each
  end
end
