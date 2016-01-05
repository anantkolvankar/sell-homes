class Location < ActiveRecord::Base
  # Associations
  #has_many :users
  has_many :property

  # for fetching latitude and longitude for the address
  geocoded_by :address
  after_validation :geocode

  def address
    [street_address, city, state, country].compact.join(', ')
  end
end
