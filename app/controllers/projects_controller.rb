class ProjectsController < ApplicationController
  before_action :set_project, only: :show

  def index
    @project = Project.new
    @projects = Project.recently_updated
    @recent_comments = Comment.recently_updated
  end

  def show
    @comments = @project.comments.recently_updated
    @comment = @project.comments.new

    respond_to do |format|
      format.html
      format.turbo_stream
    end
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

  def new
    @project = Project.new
  end

  private

  def set_project
    @project = Project.find(params["id"])
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
