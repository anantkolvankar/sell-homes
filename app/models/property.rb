class Property < ActiveRecord::Base
  belongs_to :user
  belongs_to :property_type
  has_many :property_images  
  accepts_nested_attributes_for :property_images, reject_if: :all_blank, allow_destroy: true
  
  has_many :amenity_properties
  has_many :amenities, through: :amenity_properties

  has_many :flooring_properties
  has_many :flooring, through: :flooring_properties

  accepts_nested_attributes_for :property_images
  
  #geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode    
end
