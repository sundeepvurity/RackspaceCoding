class Doctor < User
  has_many :appointments
  has_many :customers , :through => :appointments
  has_one :doctor_info , foreign_key: 'user_id'

  accepts_nested_attributes_for :doctor_info

  validates :name, presence: true ,length: {maximum: 35 }
end
