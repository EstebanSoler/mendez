class AddAttachmentImageToWelcomePhotos < ActiveRecord::Migration
  def self.up
    change_table :welcome_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :welcome_photos, :image
  end
end
