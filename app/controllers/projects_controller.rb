class ProjectsController < ApplicationController
  def index
    params['sort'] ||= :name
    @sort = params['sort']
    params['dir'] ||= :asc
    @dir = params['dir']
    @projects = Project.all.order(@sort=>@dir)
  end
end
