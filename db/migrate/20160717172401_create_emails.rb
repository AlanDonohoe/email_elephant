class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :address

      t.timestamps
    end
    add_index :emails, :address, unique: true
  end
end
