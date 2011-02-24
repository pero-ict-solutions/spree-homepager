class AddVisibleToBanners < ActiveRecord::Migration
  def self.up
    add_column :banners, :visible, :boolean
    Banner.update_all :visible => true
  end

  def self.down
    remove_column :banners, :visible
  end
end
