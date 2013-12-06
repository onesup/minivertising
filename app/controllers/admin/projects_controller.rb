class Admin::ProjectsController < ApplicationController
  layout "admin"
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  
  def index
    @projects = Project.order("order_no desc")
  end

  def show
  end

  def new
    @project = Project.new(title: "새 프로젝트", made_at: Time.now)
  end
  
  def edit
  end
  
  def create
    @project = Project.new(project_params)
    add_project_pictures
    respond_to do |format|
      if @project.save
        format.html { redirect_to admin_project_path(@project), notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    add_project_pictures
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to admin_project_path(@project), project: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to admin_projects_url }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit!
    end
    
    def add_project_pictures
      unless params[:project_picture_ids] == ""
        project_picture_ids = params[:project_picture_ids] # 맨 앞의 ',' 삭제
        project_picture_ids = eval project_picture_ids.gsub(/^,/,'[').gsub(/$/,']')
        project_pictures = ProjectPicture.find(project_picture_ids)
        project_pictures.each do |picture|
          @project.project_pictures << picture
        end
      end
    end
  
end
