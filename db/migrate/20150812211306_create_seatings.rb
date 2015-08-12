class CreateSeatings < ActiveRecord::Migration
  def change
    create_table :seatings do |t|
      t.references :restaurant, index: true, foreign_key: true
      t.integer :limit
      t.datetime :time

      t.timestamps null: false
    end
  end
end
