class CreateAgentInfos < ActiveRecord::Migration
  def change
    create_table :agent_infos do |t|
      t.string :company
      t.string :company_logo
      t.string :website
      t.string :operational_since
      t.text :description
      t.string :title
      t.text :authorize_agent
      t.integer :agent_id
      
      t.timestamps null: false
    end
  end
end
