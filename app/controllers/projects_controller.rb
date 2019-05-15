require "projectSorter.rb"
# before_action :authenticate_user!

class ProjectsController < ApplicationController
  def index
    @projects = ProjectSorter.sort(params)
  end

  def new
    
  end
end