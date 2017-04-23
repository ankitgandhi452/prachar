class NavigationController < ApplicationController
	# before_filter :set_page_title
	def home
		
	end

	def tvc
		@tvc = Tvc.last
		@tvc_videos = @tvc.tvc_videos
	end

	def about_us
		@about = AboutUs.last
		@team_members = TeamMember.all
	end

	# private
	# def set_page_title
		# @title = 
	# end
end
