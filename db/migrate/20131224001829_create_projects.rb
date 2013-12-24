class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :caption
      t.text :description
      t.string :medium
      t.string :price

      t.timestamps
    end
  end
end
