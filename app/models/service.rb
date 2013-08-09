class Service < ActiveRecord::Base
  attr_accessible :description, :image, :name, :type_of_service_id, :body

  belongs_to :type_of_service
  has_many :service_photos
  has_many :preparations

  has_attached_file :image,
   :styles => { :large => "287x192>",:medium => "254x160",:small =>"232x150"},
   :default_url => "/images/missing/service_:style_missing.png"
end
