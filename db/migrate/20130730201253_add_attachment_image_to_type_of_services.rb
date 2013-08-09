class AddAttachmentImageToTypeOfServices < ActiveRecord::Migration
  def self.up
    change_table :type_of_services do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :type_of_services, :image
  end
end
