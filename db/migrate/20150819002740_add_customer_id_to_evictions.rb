class AddCustomerIdToEvictions < ActiveRecord::Migration
  def change
    add_column :evictions, :customer_id, :integer
  end
end
