class ResidentPhoto < ActiveRecord::Base
  attr_accessible :title, :image

    has_attached_file :image,
   :styles => { :large => "480x225>",:medium => "254x160",:small =>"232x150"},
   :default_url => "/images/missing/welcome_:style_missing.png"
end
