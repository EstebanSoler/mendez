class Resident < ActiveRecord::Base
  attr_accessible :end_date, :first_name, :gender, :last_name, :start_date

   default_scope :order => 'start_date DESC'

  validates :gender, :inclusion => %w(male female)
  validate :validate_end_date_before_start_date

  def validate_end_date_before_start_date
    if end_date && start_date
      errors.add(:end_date, "end_date must be later than start_date") if end_date < start_date
    end
  end

  def full_name
    "#{first_name} #{last_name}" 
  end

  def profesional_name
    gender == "male" ? "Dr. #{full_name } " : "Dra. #{full_name}"
  end

  def period
    "(#{start_date.strftime("%Y")}-#{end_date.strftime("%Y")})" 
  end
end
