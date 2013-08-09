class AddAttachmentImageToMachines < ActiveRecord::Migration
  def self.up
    change_table :machines do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :machines, :image
  end
end
