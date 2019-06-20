class Api::UsersController < ApplicationController
  def index
    users = User.serialized_users
    render :json => users
  end

  def create
    user = User.new(user_params)
    if user.save
      generate_referral(params[:referral_code], user.id) if params[:referral_code]
      render json: { status: 'SUCCESS' }
    else
      render json: { status: 'ERROR' }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :payment)
  end

  def generate_referral(code, referred_id)
    referrer = User.find_by(referral_code: code)
    if referrer && referrer.id != referred_id
      Referral.create(referrer_id: referrer.id, referred_id: referred_id)
    end
  end
end
