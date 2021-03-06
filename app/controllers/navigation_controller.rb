class NavigationController < ApplicationController
	# before_filter :set_page_title
	skip_before_filter :verify_authenticity_token, :only => [:apply]
	def home
		@home = Home.last
		@banner_images = @home.home_images.order("ASC sequence")
	end

	def clients
		@client = Client.last
		@client_images = @client.client_images.order("ASC sequence")
	end

	def logos
		@logo = Logo.last
		@logo_images = @logo.logo_images.order("ASC sequence")
	end

	def collaterals
		@collateral = Collateral.last
		@collateral_images = @collateral.collateral_images
	end

	def tvcs
		@tvc = Tvc.last
		@tvc_videos = @tvc.tvc_videos.order("ASC sequence")
	end

	def print_ads
		@print_ad = Print.last
		@print_ad_images = @print_ad.print_images
	end

	def celebrity_management
		@celebrity_management = CelebrityManagement.last
		@celebrities = @celebrity_management.celebrity_management_images
	end

	def digital_media
		@digital_media = DigitalMedium.last
		@digital_media_images = @digital_media.digital_media_images
	end

	def about_us
		@about = AboutUs.last
		@team_members = TeamMember.all
	end

	def career
		@career = Career.last
		@openings = @career.openings.order("ASC sequence")
		@job_application = JobApplication.new
	end

	def apply
		job_application = JobApplication.new(navigation_params)
		respond_to do |format|
			if job_application.save

				format.html{
					flash[:notice] = 'Successfully Applied'
					redirect_to(:back)
				}
			else
				format.html{
					flash[:notice] = 'Unsuccessfully Applied'
					redirect_to(:back)
				}
			end
		end
	end

	def contact_us
		@contacted = Contacted.new
		@contact_us = ContactUs.last
	end

	def contacted

	end

	def media
		@media = MediaPage.last
		@media_images = @media.media_images.order("ASC sequence")
	end

	def creative
		@creative = Creative.last
		@creative_images = @creative.creative_images.order("ASC sequence")
	end

	def film_production
		@film_production = FilmProduction.last
		@film_production_images = @film_production.film_production_images.order("ASC sequence")
	end

	def success_stories
		@success_stories = SuccessStory.last
		@stories = @success_stories.stories.order("ASC sequence")
	end

	private
	def navigation_params

      if !params[:job_application].nil?
        params.fetch(:job_application, {}).permit(:name, :email, :subject, :description, :message, :resume)
      elsif !params[:contacted].nil?
        params.fetch(:contacted, {}).permit(:name, :email, :subject, :description, :message)
      else
      end

      # params.fetch(:library_course, {}).permit(:name, :description, :sector, :private, :published, :owner_id, :category, :type, course_images_attributes: [:caption, :subcaption, :image] ) if params[:library_course]
      # params.fetch(:modularized_course, {}).permit(:name, :description, :sector, :private, :published, :owner_id, :category, :type, course_images_attributes: [:caption, :subcaption, :image] ) if params[:modularized_course]
    end
end
