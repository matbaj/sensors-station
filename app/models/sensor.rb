class Sensor < ActiveRecord::Base
	belongs_to :station
	has_many :sensor_logs
end
