class SlideInfo < ActiveRecord::Base
  attr_accessible :body, :image, :title, :description

  has_many :slide_info_photos

  has_attached_file :image, :styles => { :large => "601x302",
   :medium => "450x228", :small => "259x130" },
   :default_url => "/images/missing/slide_info_:style_missing.png"
end
