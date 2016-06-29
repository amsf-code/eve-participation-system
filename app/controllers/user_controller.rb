# frozen_string_literal: true
class UserController < ApplicationController
  load_and_authorize_resource

  def show
    @user = User.find(params[:id])
    @fleets = Fleet.where(user_id: params[:id]).find_each
  end
end
