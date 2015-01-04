class ApiController < ApplicationController
	skip_before_action :verify_authenticity_token
	def update
		s = Station.find_by(:key => params[:key])
		sensors = JSON.parse params[:sensors]
		puts sensors

		sensors.each do |key, value|
			sensor = s.sensors.find_or_create_by(:key => key, :station => s)
			log = SensorLog.create(:sensor=>sensor, :value => value)			
		end
		render :text => "ok"
	end
end
