require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  def before_setup
    super
	@doctor = Doctor.create(name: "Sample Doctor")
  end


  test "should not create appointment when doctor id not given" do
	  appointment = Appointment.new
	  assert_not appointment.save
  end

  test "should not create appointment when appointment time is not given" do
	  appointment = Appointment.new(doctor_id: @doctor.id)
	  assert_not appointment.save
  end

  test "should create appointment" do
	  appointment = Appointment.new(doctor_id: @doctor.id, appointment_time: Time.now)
	  assert appointment.save
  end
end
