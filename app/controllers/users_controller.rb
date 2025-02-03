class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @postimages = @user.postimages.page(params[:page])
  end

  def edit
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to postimages_path
    end

    @user = User.find(params[:id])
    
  end

  def update
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to postimages_path
    end

    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
