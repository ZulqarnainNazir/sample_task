class DashboardController < ApplicationController
	
	include DoctorsHelper

	def welcome
		@doctors = get_doctor_available_at(params[:start_time]) if params[:start_time].present?		
	end
end
