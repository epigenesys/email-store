class CreateEmailStoreEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :email_store_emails do |t|
      t.string :to_address
      t.string :from_address
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
