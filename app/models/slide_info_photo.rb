class SlideInfoPhoto < ActiveRecord::Base
  attr_accessible :title, :photo, :slide_info_id

    belongs_to :slide_info

    has_attached_file :photo,
   :styles => { :large => "287x192>",:medium => "254x160",:small =>"232x150"},
   :default_url => "/images/missing/silde_info_photo_:style_missing.png"
end
