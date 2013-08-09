class RemoveImageUrlFromBanner < ActiveRecord::Migration
  def up
    remove_column :banners, :image_url
  end

  def down
    add_column :banners, :image_url, :string
  end
end
