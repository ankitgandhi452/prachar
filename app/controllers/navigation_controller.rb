class NavigationController < ApplicationController
	# before_filter :set_page_title
	skip_before_filter :verify_authenticity_token, :only => [:apply]
	def home

	end

	def logos
		@logo = Logo.last
		@logo_images = @logo.logo_images.order("ASC sequence")
	end

	def tvcs
		@tvc = Tvc.last
		@tvc_videos = @tvc.tvc_videos.order("ASC sequence")
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
