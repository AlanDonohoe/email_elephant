class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :encrypted_api_key
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end
end
