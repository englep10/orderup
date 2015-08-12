class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :company
      t.string :email
      t.string :phonenumber

      t.timestamps null: false
    end
  end
end
