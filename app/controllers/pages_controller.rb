class PagesController < ApplicationController
  def home
  end

  def gallery
    @projects = Project.all
  end

  def about
  end
end
