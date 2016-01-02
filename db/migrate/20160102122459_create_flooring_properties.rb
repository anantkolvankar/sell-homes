class CreateFlooringProperties < ActiveRecord::Migration
  def change
    create_table :flooring_properties do |t|
      t.integer :flooring_id
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
