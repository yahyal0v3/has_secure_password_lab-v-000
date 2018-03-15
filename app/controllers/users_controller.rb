class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    if params[:name].blank?
      redirect_to new_user_path
    else
      @user = User.create(user_params)
      redirect_to new_session_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
