# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    @header = request.headers
  end
end
