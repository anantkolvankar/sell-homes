class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.string :photo
      t.string :title
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
