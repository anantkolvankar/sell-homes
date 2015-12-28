class Amenity < ActiveRecord::Base
  has_many :amenity_properties
  has_many :properties, through: :amenity_properties

end
