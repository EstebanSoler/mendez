class RemoveImageUrlFromService < ActiveRecord::Migration
  def up
    remove_column :services, :image_url
  end

  def down
    add_column :services, :image_url, :string
  end
end
