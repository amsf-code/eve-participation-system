class HomeController < ApplicationController
  def index
    @header = request.headers
  end
end
