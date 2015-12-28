class PropertyImage < ActiveRecord::Base
  belongs_to :property
  mount_uploader :photo, AvatarUploader
end
