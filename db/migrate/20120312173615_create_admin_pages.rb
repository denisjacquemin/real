class CreateAdminPages < ActiveRecord::Migration
  def change
    create_table :admin_pages do |t|
      t.string :title
      t.string :permalink
      t.integer :template_id
      t.text :content
      t.integer :agency_id

      t.timestamps
    end
  end
end
