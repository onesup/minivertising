class ProjectPicturesController < ApplicationController
  def create
    @project = Project.find(params[:project_id][:value])
    @project_picture = ProjectPicture.find(params[:id])
    @project_picture.save
  end

  def update
    @project = Project.find(params[:project_id])
    binding.pry
    @project_picture = ProjectPicture.find(params[:id])
    @project_picture.save
  end
  
  def destroy
    @project_picture = ProjectPicture.find(params[:id])
    @project_picture.destroy
    respond_to do |format|
      format.html { redirect_to admin_projects_url }
      format.json { head :no_content }
    end
  end
end
