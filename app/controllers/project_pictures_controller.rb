class ProjectPicturesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @project_picture = ProjectPicture.find(params[:id])
    @project_picture.save
  end

  def update
    @project = Project.find(params[:project_id])
    @project_picture = ProjectPicture.find(params[:id])
    @project_picture.save
  end
end
