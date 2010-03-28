class User::ProjectsController < ApplicationController
  before_filter :require_user, :only => [:new, :create]
  before_filter :load_user, :only => [:index, :show]

  def index
    @projects = @user.projects
  end

  def show
    @project = @user.projects.find(params[:id])
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.new(params[:project])

    if @project.save
      flash[:success] = "Project created"
      redirect_to user_projects_path(current_user)
    else
      render :new
    end
  end

  protected

  def load_user
    @user = User.find(params[:user_id])
  end
end
