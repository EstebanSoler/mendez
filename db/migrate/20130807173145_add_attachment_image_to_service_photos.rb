class AddAttachmentImageToServicePhotos < ActiveRecord::Migration
  def self.up
    change_table :service_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :service_photos, :image
  end
end
