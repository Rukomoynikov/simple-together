class ProjectsController < ApplicationController
  # before_action :set_project
  #
  def index
    @project = Project.new
    @projects = Project.recently_updated
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      @projects = Project.recently_updated

      respond_to do |format|
        format.html { redirect_to projects_path, notice: "New project arrived: #{@project.title}" }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
