class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :super_builtup
      t.integer :super_builtup_unit
      t.string :builtup
      t.integer :builtup_unit
      t.string :carpet
      t.integer :carpet_unit
      t.string :transaction_type
      t.string :possession_status
      t.string :construction_age
      t.references :property, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
