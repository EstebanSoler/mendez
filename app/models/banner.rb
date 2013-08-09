class Banner < ActiveRecord::Base
  attr_accessible :body, :image, :name
    has_attached_file :image,
   :styles => { :default => "273x141>"},
   :default_url => "/images/missing/banner_:style_missing.png"
end
