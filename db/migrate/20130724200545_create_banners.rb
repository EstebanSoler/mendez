class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :name
      t.text :body
      t.string :image_url

      t.timestamps
    end
  end
end
