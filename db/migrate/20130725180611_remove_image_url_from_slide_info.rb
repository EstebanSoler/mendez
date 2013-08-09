class RemoveImageUrlFromSlideInfo < ActiveRecord::Migration
  def up
    remove_column :slide_infos, :image_url
  end

  def down
    add_column :slide_infos, :image_url, :string
  end
end
