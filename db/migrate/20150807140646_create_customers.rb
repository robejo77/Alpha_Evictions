class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :company
      t.string :contact
      t.string :address
      t.string :suite
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :fax

      t.timestamps
    end
  end
end
