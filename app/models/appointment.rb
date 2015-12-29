class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :customer

  validates  :doctor, presence: true
  validates :customer, presence: true
  validates :pet, presence: true
  validates :reason_for_visit , presence: true
  validate :validate_visit_date

  private
  def validate_visit_date
    errors.add(:visit_date, 'Visiting date can\'t be a past date.') if self.visit_date.past?
  end

end
