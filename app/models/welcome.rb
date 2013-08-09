class Welcome < ActiveRecord::Base
  attr_accessible :body, :description, :title

  has_many :welcome_photos
end
