class ApplicationController < ActionController::Base
	include Mobvious::Rails::Controller
	before_filter :set_device_type
  	protect_from_forgery with: :exception

  	def set_device_type
  		@device = request.env['mobvious.device_type']
  	end
end
