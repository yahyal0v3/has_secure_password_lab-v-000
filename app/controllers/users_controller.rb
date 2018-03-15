class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      raise params.inspect
      session[:user_id] = @user.id
      redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
