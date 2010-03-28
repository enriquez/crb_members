class User::ProjectsController < ApplicationController
  before_filter :load_user

  def index
    @projects = Project.all 
  end

  def show
    @project = @user.projects.find(params[:id])
  end

  def new
    @project = @user.projects.new
  end

  def create
    @project = @user.projects.new(params[:project])

    if @project.save
      flash[:success] = "Project created"
      redirect_to user_projects_path(@user)
    else
      render :new
    end
  end

  protected
  def load_user
    @user = User.find(params[:user_id])
  end
end
