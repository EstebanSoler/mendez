class MachinePhoto < ActiveRecord::Base
  attr_accessible :title, :image, :machine_id

  belongs_to :machine

  has_attached_file :image,
   :styles => { :large => "287x192>",:medium => "254x160",:small =>"232x150"},
   :default_url => "/images/missing/machine_:style_missing.png"
end
