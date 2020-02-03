require "projectSorter.rb"

class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :get]

  def index
    @projects = ProjectSorter.sort(params)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.invalid?
      redirect_to new_project_path, alert: "You have entered invalid values for the form. Please try again."
    else
      redirect_to root_path
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :team_members, :description)
  end
end