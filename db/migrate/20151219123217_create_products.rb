class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :pincode
      t.string :region
      t.string :area
      t.text :address
      t.references :user, index: true, foreign_key: true
      t.references :product_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
