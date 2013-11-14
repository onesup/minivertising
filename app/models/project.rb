class Project < ActiveRecord::Base
  mount_uploader :project_big, ProjectBigUploader
  mount_uploader :project_thumbnail, ProjectThumbnailUploader
end
