class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :property_images do |t|
      t.string :photo
      t.string :title
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
