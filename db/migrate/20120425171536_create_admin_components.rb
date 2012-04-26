class CreateAdminComponents < ActiveRecord::Migration
  def change
    create_table :admin_components do |t|
      t.string :title
      t.text :content
      t.string :permalink
      t.integer :component_type_id
      t.integer :agency_id
      t.integer :template_id

      t.timestamps
    end
  end
end
