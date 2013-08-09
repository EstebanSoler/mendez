class WelcomePhoto < ActiveRecord::Base
  attr_accessible :title, :welcome_id, :image

  belongs_to :welcome

  has_attached_file :image,
   :styles => { :large => "287x192>",:medium => "254x160",:small =>"232x150"},
   :default_url => "/images/missing/welcome_:style_missing.png"
end
