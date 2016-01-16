class AddAdditionalFieldsToSpecifications < ActiveRecord::Migration
  def change
    add_column :specifications, :facing, :string
    add_column :specifications, :total_lifts, :integer
    add_column :specifications, :floor_flats_count, :integer
    add_column :specifications, :multiple_units, :boolean
    add_column :specifications, :water_availabilty, :string
    add_column :specifications, :electricity_status, :string
    add_column :specifications, :ownership_status, :string
    add_column :specifications, :approved_by, :string
  end
end
