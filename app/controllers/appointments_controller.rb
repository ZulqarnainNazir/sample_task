class AppointmentsController < ApplicationController
	# permit params to make strong params 
	def create
		@app = Appointment.new(permit_params)
		if @app.save!
			flash[:success] = "Appointment created successfully!"
		else
			flash[:error] = "Error!"
		end
		redirect_to '/'
	end

	private 
	def permit_params
		params.require(:appointment).permit(:doctor_id, :appointment_time)
	end
end
