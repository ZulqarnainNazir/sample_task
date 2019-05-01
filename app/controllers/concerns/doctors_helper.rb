module DoctorsHelper
# USe this whenever need to get available doctors at time (DRY)
  def get_doctor_available_at(at_time)
  	Doctor.get_available_doctors(at_time)
  end
end
