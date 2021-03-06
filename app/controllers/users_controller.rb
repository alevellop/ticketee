class UsersController < ApplicationController
  
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to projects_path, notice: "You have signed up successfully."
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to projects_path, notice: "Profile has been updated."
    else
      flash[:alert] = "Profile has not been updated."
      render :edit
    end
  end
  
  private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    def set_user
      @user = User.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      redirect_to projects_path, alert: "The user you were looking for could not be found."
    end
end
