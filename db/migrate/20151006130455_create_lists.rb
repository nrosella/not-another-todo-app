class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :format
      t.string :item_one
      t.string :item_two
      t.string :item_three
      t.string :item_four

      t.timestamps null: false
    end
  end
end
