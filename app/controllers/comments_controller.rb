class CommentsController < ApplicationController
  before_action :set_project, only: :create

  def create
    @comment = @project.comments.new(comment_params)

    if @comment.save
      @comment = @project.comments.new

      respond_to do |format|
        format.html { redirect_to projects_path(@project), notice: "New comment arrived" }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_project
    @project = Project.find(comment_params["project_id"])
  end

  def comment_params
    params.require(:comment).permit(:project_id, :body)
  end
end
