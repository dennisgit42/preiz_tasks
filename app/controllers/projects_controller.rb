require "projectSorter.rb"

class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :get, :update]

  def index
    @projects = ProjectSorter.sort(params)
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(project_params)
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :team_members, :description)
  end
end