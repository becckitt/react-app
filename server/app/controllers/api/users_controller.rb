class Api::UsersController < ApplicationController
  def index
    users = User.serialized_users
    render :json => users
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: { status: 'SUCCESS', message: 'User saved', data: user }
    else
      render json: { status: 'ERROR', message: 'user not saved'}
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :payment)
  end
end
