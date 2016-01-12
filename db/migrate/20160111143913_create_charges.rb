class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.references :property, index: true, foreign_key: true
      t.integer :expected_price
      # price type will be fixed, negotiable, onwards, call
      t.string :price_type
      t.boolean :car_parking
      t.boolean :club_membership
      t.integer :token_amount
      t.integer :others
      t.integer :maintenance
      # maintenance type will be monthly, qtly, one time etc
      t.string :maintenance_type

      t.timestamps null: false
    end
  end
end
