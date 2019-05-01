require 'test_helper'

class DoctorTest < ActiveSupport::TestCase

  def before_setup
    super
		@doctorA = Doctor.create(name: "Sample Doctor A")
		@doctorB = Doctor.create(name: "Sample Doctor B")
  end


  test "should not save Doctor without title" do
	  doctor = Doctor.new
	  assert_not doctor.save
  end

  test "should save Doctor when title is given" do
	  doctor = Doctor.new(name: "Sample Doctor")
	  assert doctor.save
  end

  test "should give all avaible doctor" do
	  doctor = Doctor.get_available_doctors(Time.now)
	  assert doctor.count == 2
  end

  test "should give avaible doctor" do
	  appointment = Appointment.create(doctor_id: @doctorA.id, appointment_time: DateTime.now.midnight)
	  doctor = Doctor.get_available_doctors(DateTime.now.midnight)
	  assert doctor.count == 1
  end

end
