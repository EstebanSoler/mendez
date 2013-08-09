class TypeOfService < ActiveRecord::Base
  attr_accessible :type_name, :image

  has_many :services

  has_attached_file :image,
   :styles => { :large => "294x155",:medium => "238x161",:small =>"266x158"},
   :default_url => "/images/missing/service_:style_missing.png"
end
