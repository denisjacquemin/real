class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :permalink
      t.integer :template
      t.text :content

      t.timestamps
    end
  end
end
