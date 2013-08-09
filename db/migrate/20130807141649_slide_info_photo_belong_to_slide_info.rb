class SlideInfoPhotoBelongToSlideInfo < ActiveRecord::Migration
  def change
    change_table :slide_info_photos do |t|
      t.belongs_to :slide_info
    end
  end
end
