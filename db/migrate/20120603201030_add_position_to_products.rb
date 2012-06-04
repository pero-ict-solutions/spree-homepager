class AddPositionToProducts < ActiveRecord::Migration
  def self.up
    add_column :spree_products, :position, :integer
  end

  def self.down
    remove_column :spree_products, :position
  end
end
