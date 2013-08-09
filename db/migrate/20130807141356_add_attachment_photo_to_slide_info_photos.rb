class AddAttachmentPhotoToSlideInfoPhotos < ActiveRecord::Migration
  def self.up
    change_table :slide_info_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :slide_info_photos, :photo
  end
end
