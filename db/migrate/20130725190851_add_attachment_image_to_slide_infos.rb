class AddAttachmentImageToSlideInfos < ActiveRecord::Migration
  def self.up
    change_table :slide_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :slide_infos, :image
  end
end
