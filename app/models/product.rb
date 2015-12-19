class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :productType
end
