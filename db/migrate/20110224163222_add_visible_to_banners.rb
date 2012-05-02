class AddVisibleToBanners < ActiveRecord::Migration
  def self.up
    add_column :spree_banners, :visible, :boolean
    Spree::Banner.update_all :visible => true
  end

  def self.down
    remove_column :spree_banners, :visible
  end
end
