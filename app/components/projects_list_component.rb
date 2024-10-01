# frozen_string_literal: true

class ProjectsListComponent < ViewComponent::Base
  attr_reader :projects

  def initialize(projects:)
    @projects = projects
  end
end
