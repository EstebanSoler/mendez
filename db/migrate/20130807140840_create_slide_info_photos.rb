class CreateSlideInfoPhotos < ActiveRecord::Migration
  def change
    create_table :slide_info_photos do |t|
      t.string :title

      t.timestamps
    end
  end
end
