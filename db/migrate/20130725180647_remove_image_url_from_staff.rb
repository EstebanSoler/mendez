class RemoveImageUrlFromStaff < ActiveRecord::Migration
  def up
    remove_column :staffs, :image_url
  end

  def down
    add_column :staffs, :image_url, :string
  end
end
