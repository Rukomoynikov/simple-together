# frozen_string_literal: true

class CommentFormComponent < ViewComponent::Base
  attr_reader :comment

  def initialize(comment:)
    @comment = comment
  end
end
