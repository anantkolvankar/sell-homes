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
  
  belongs_to :location

  attr_accessor :location_name
  #callback
  #before_create :add_location_to_property

  def add_location_to_property
    if location_name.present?
      location = location_name.split(',')
      size = location.length
      end_index = size - 3
      # Append location data into user location hash
      user_location = {

        street_address: location[0..end_index].join(','),
        city: location[size - 3],
        state: location[size - 2],
        country: location[size - 1]
      }
      # Update user with location_id
      self.location = Location.create(user_location)
      save
    end
  end
 
end
