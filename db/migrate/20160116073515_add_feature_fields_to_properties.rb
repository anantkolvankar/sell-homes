class AddFeatureFieldsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :furnished_status, :string
    add_column :properties, :floor_no, :integer
    add_column :properties, :total_floors, :integer
  end
end
