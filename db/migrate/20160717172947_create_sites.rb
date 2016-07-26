class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :domain

      t.timestamps
    end
    add_index :sites, :domain, unique: true
  end
end
