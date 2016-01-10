class CreateBalconies < ActiveRecord::Migration
  def change
    create_table :balconies do |t|
      t.references :property, index: true, foreign_key: true
      t.integer :length
      t.integer :breadth

      t.timestamps null: false
    end
  end
end
