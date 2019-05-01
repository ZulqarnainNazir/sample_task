class Appointment < ApplicationRecord
  belongs_to :doctor
  validates :appointment_time, presence: true

  scope :available_doctors_at, ->(at_time) { where(appointment_time: at_time)}
end
