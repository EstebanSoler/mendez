class Consultation < ActiveRecord::Base
  attr_accessible :consultation, :email, :name, :phone_number
end
