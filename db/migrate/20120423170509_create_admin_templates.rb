class CreateAdminTemplates < ActiveRecord::Migration
  def change
    create_table :admin_templates do |t|
      t.string :title
      t.text :content
      t.integer :agency_id

      t.timestamps
    end
  end
end