class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_first_name
      t.string :user_last_name
      t.string :user_email
      t.string :password_digest
      t.boolean :user_admin?, :default => false
      t.timestamps
    end
  end
end
