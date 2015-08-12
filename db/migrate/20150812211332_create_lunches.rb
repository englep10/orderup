class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :group
      t.string :creditcard
      t.references :user, index: true, foreign_key: true
      t.string :status
      t.references :seating, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
