class NavigationController < ApplicationController
	# before_filter :set_page_title
	def home

	end

	def logos
		@logo = Logo.last
		@logo_images = @logo.logo_images
	end

	def collaterals
		@collateral = Collateral.last
		@collateral_images = @collateral.collateral_images
	end

	def tvcs
		@tvc = Tvc.last
		@tvc_videos = @tvc.tvc_videos
	end

	def print_ads
		@print_ad = PrintAd.last
		@print_ad_images = @print_ad.print_ads
	end

	def celebrity_management
		@celebrity_management = CelebrityManagement.last
		@celebrities = @celebrity_management.celebrity_management_images
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
