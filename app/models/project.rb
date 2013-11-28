class Project < ActiveRecord::Base
  serialize :project_thumbnail, Hash
  mount_uploader :project_thumbnail, ProjectThumbnailUploader
  has_many :project_pictures
  accepts_nested_attributes_for :project_pictures
end
