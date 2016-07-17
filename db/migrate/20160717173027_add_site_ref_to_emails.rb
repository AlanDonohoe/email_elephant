class AddSiteRefToEmails < ActiveRecord::Migration[5.0]
  def change
    add_reference :emails, :site, foreign_key: true
  end
end
