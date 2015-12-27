class CreateFloorings < ActiveRecord::Migration
  def change
    create_table :floorings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
