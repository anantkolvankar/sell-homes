class Flooring < ActiveRecord::Base
  has_many :flooring_properties
  has_many :properties, through: :flooring_properties

end
