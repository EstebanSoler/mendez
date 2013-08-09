class Staff < ActiveRecord::Base
  attr_accessible :last_name, :first_name, :avatar, :cv, :gender

  validates :gender, :inclusion => %w(male female)

  has_attached_file :avatar, :styles => { :large => "294x174>",
   :medium => "236x172", :small => "264x141" },
   :default_url => "/images/missing/staff_:style_missing.jpg"

  def full_name
    "#{first_name} #{last_name}" 
  end

  def profesional_name
    gender == "male" ? "Dr. #{full_name } " : "Dra. #{full_name}"
  end
end
