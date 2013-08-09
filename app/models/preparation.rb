class Preparation < ActiveRecord::Base
  attr_accessible :body, :name, :service_id

  belongs_to :service
end
