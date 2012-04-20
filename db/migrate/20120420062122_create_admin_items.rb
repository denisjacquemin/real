class CreateAdminItems < ActiveRecord::Migration
  def change
    create_table :admin_items do |t|
      t.integer :type
      t.integer :agency_id

      t.timestamps
    end
  end
end
