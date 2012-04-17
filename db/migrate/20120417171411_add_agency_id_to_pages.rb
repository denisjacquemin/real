class AddAgencyIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :agency_id, :integer
  end
end
