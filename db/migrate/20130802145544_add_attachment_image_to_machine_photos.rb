class AddAttachmentImageToMachinePhotos < ActiveRecord::Migration
  def self.up
    change_table :machine_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :machine_photos, :image
  end
end
