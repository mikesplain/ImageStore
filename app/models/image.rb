class Image < ActiveRecord::Base
  attr_accessible :name, :image
  mount_uploader :image, ImageUploader

  validates :image, :presence => true
end
