class HomeController < ApplicationController
  def index
    @projects = Project.order("created_at desc").limit(8)
  end

  def contact
    @projects = Project.order("created_at desc").limit(8)
  end
  
  def kakao
  end
end
