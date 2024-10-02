# frozen_string_literal: true

class CommentsListComponent < ViewComponent::Base
  attr_reader :comments

  def initialize(comments:)
    @comments = comments
  end
end
