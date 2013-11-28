class ProjectPicture < ActiveRecord::Base
  mount_uploader :project_big, ProjectBigUploader
  belongs_to :project
end
