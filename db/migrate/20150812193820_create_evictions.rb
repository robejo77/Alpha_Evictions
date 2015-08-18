
class CreateEvictions < ActiveRecord::Migration
  def change
    drop_table :evictions 
    create_table :evictions do |t|
      t.belongs_to :customer, index: true
      t.string :plantiff
      t.string :defendant
      t.string :case
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :h_s_v
      t.datetime :scheduled
      t.datetime :ejected

      t.timestamps
    end
  end
end
