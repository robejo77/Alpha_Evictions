class AddFKeyToEviction < ActiveRecord::Migration
  def change
    add_column :evictions, :property_id, :integer
  end
end
