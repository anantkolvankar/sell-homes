class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :product_type
  has_many :product_images  
  
  
  has_many :amenity_properties
  has_many :amenities, through: :amenity_properties

   accepts_nested_attributes_for :product_images
end
