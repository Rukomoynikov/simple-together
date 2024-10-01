# frozen_string_literal: true

class ProjectFormComponent < ViewComponent::Base
  attr_reader :project

  def initialize(project: Project.new)
    @project = project
  end
end
