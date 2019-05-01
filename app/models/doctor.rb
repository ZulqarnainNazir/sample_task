class Doctor < ApplicationRecord

	has_many :appointments, dependent: :destroy
	validates :name, presence: true
	def self.get_available_doctors(start_time)
		# parse the corrent format of date as it comes from date picker
		doc_ids = Appointment.available_doctors_at(start_time).pluck(:doctor_id)
		Doctor.where.not(id: doc_ids)
	end

end
