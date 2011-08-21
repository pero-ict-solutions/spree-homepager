class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.integer   :position
      t.string    :tagline
      t.string    :target_url
      t.string    :image_file_name
      t.string    :image_content_type
      t.integer   :image_file_size
      t.datetime  :image_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
