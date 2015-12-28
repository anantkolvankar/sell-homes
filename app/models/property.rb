class Property < ActiveRecord::Base
  belongs_to :user
  belongs_to :property_type
  has_many :property_images  
  
  
  has_many :amenity_properties
  has_many :amenities, through: :amenity_properties

   accepts_nested_attributes_for :property_images
end
