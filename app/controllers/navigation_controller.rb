class NavigationController < ApplicationController
	def home
		
	end

	def tvc
		@tvc = Tvc.last
		@tvc_videos = @tvc.tvc_videos
	end
end
