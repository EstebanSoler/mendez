class Article < ActiveRecord::Base
  attr_accessible :body, :image, :title, :description
    has_attached_file :image, :styles => { :large => "136x93",
   :medium => "136x93", :small => "200x138" },
   :default_url => "/images/missing/article_:style_missing.jpg"
end
