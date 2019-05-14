class ProjectSorter
  def self.sort(params)
    @sort_by = params.fetch(:sort_by, :name)
    @direction = params.fetch(:direction, :desc)
    Project.order(@sort_by => @direction)
  end
end