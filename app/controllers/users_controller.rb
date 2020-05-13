class UsersController < ApplicationController
  before_action :authenticate_user

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
      if User.exists?(email: user.email)
        user = User.all.find_by_email(user.email)
        render json: user, :include => [:profile]
      else
        user.save
        render json: user, :include => [:profile]
      end
  end

  def show; end

  def destroy
    user = User.all.find_by(id: params[:id])
    user.delete
  end


  def user_params
    params.require(:user).permit(:email, :password)
  end
end
