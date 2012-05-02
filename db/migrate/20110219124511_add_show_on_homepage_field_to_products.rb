class AddShowOnHomepageFieldToProducts < ActiveRecord::Migration
  def self.up
    add_column :spree_products, :show_on_homepage, :boolean, :default => false
  end

  def self.down
    remove_column :spree_products, :show_on_homepage
  end
end