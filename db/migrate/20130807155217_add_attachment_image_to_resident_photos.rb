class AddAttachmentImageToResidentPhotos < ActiveRecord::Migration
  def self.up
    change_table :resident_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :resident_photos, :image
  end
end
