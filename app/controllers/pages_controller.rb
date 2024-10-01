class PagesController < ApplicationController
  def main
    @projects = Project.all
  end
end
