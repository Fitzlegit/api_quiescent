class UsersController < ApplicationController

  def index
    user = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    user.save
    render json: user
  end

  def show; end

  def detroy
    user = User.find_by(id: params[:id])
    user.delete
  end


  def user_params
    params.require(:user).permit(:email, :password_digest)
  end
end
