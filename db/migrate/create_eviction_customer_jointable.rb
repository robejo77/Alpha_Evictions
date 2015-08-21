class CreateEvictionCustomerJoinTable < ActiveRecord::Migration
	def change
    create_table :evictions_customers, id: false do |t|
      t.integer :eviction_id
      t.integer :customer_id
    end
 
    add_index :evictions_customers, :eviction_id
    add_index :evictions_customers, :customer_id
  end
 end