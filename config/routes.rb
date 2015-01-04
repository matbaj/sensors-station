Rails.application.routes.draw do

	scope :api do
		post "/sensors_update" => "api#update"
	end
	
end
