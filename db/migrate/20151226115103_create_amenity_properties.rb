class CreateAmenityProperties < ActiveRecord::Migration
  def change
    create_table :amenity_properties do |t|
      t.integer :amenity_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
