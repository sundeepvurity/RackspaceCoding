class DoctorInfo < ActiveRecord::Base
  self.table_name = "doctor_info"
  belongs_to :doctor
  validates :address, presence: true
  validates :zip, length: {maximum: 5 }
  validates :years_since_passed, :numericality => { :greater_than => 0, :less_than_or_equal_to => 100 }
end
