module ApplicationHelper
	include Mobvious::Rails::Helper

	def device_type
		"#{@device}"
	end
end
