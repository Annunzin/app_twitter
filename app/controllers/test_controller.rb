class TestController < ApplicationController
before_action :set_user, only: [:show]

  # GET /test
  # GET /users.json
  def index
    @users = User.all
  end


end


