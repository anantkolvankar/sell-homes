class Amenity < ActiveRecord::Base
  has_many :amenity_properties
  has_many :products, through: :amenity_properties

end
