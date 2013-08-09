class Graduate < ActiveRecord::Base
  attr_accessible :email, :first_name, :gender, :graduation_date,
   :last_name, :specialty

   default_scope :order => 'graduation_date DESC'

  validates :email,
   :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :gender, :inclusion => %w(male female)

  def full_name
    "#{first_name} #{last_name}" 
  end

  def profesional_name
    gender == "male" ? "Dr. #{full_name } " : "Dra. #{full_name}"
  end

  def graduation_year
    "#{graduation_date.strftime("%Y")}" 
  end
end
