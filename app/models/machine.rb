class Machine < ActiveRecord::Base
  attr_accessible :body, :description, :name, :image

  has_many :machine_photos

    has_attached_file :image,
   :styles => { :large => "287x192>",:medium => "254x160",:small =>"232x150"},
   :default_url => "/images/missing/machine_:style_missing.png"
end
