class Project < ActiveRecord::Base
  mount_uploader :project_thumbnail, ProjectThumbnailUploader
  mount_uploader :partner_logo, PartnerLogoUploader
  has_many :project_pictures
  accepts_nested_attributes_for :project_pictures
  validates :title, :made_at, presence: true
  
end
