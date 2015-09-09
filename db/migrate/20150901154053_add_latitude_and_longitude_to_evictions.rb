class AddLatitudeAndLongitudeToEvictions < ActiveRecord::Migration
  def change
    add_column :evictions, :latitude, :float
    add_column :evictions, :longitude, :float
  end
end
