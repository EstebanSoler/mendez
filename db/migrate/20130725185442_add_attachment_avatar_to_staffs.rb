class AddAttachmentAvatarToStaffs < ActiveRecord::Migration
  def self.up
    change_table :staffs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :staffs, :avatar
  end
end
