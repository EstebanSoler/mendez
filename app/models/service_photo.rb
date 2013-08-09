class ServicePhoto < ActiveRecord::Base
  attr_accessible :title, :image, :service_id

  belongs_to :service

  has_attached_file :image,
   :styles => { :large => "287x192>",:medium => "254x160",:small =>"232x150"},
   :default_url => "/images/missing/service_:style_missing.png"
end
