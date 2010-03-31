class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    
    if @user.save
      flash[:success] = "Welcome to CRB! Happy coding!"
      redirect_to root_path
    else
      render :new
    end
  end
end
