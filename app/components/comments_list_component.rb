# frozen_string_literal: true

class CommentsListComponent < ViewComponent::Base
  attr_reader :comments, :title, :show_project_link

  def initialize(comments:, title: "Comments", show_project_link: false)
    @comments = comments
    @title = title
    @show_project_link = show_project_link
  end
end
