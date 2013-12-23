class PagesController < ApplicationController
  def home
    @variable = "hello world!"
    @array = ["Jeff", "Joe", "Dan", "Jeanne", "Tim"]
  end

  def gallery
  end

  def about
  end
end
