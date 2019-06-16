class Api::UsersController < ApplicationController
  def index
    users = User.serialized_users
    render :json => users
  end
end
