class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.text :description
      t.integer :category_id

      t.timestamps
    end
  end
end
