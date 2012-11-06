class Folder < ActiveRecord::Base
  attr_accessible :description, :path, :title, :url
end
