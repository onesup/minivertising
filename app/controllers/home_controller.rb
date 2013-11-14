class HomeController < ApplicationController
  def index
    @projects = Project.order("created_at desc").limit(8)
  end
end
