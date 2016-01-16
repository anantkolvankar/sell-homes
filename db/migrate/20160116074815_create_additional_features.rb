class CreateAdditionalFeatures < ActiveRecord::Migration
  def change
    create_table :additional_features do |t|
      t.references :property, index: true, foreign_key: true
      t.string :feature_type
      t.string :feature_val

      t.timestamps null: false
    end
  end
end
