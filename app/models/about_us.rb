class AboutUs
	include Mongoid::Document
	include Mongoid::Paperclip

	# has_mongoid_attached_file :header_image
	# validates_attachment_content_type :header_image, content_type: /\Aimage/
	# validates_attachment_file_name :avatar, matches: [/png\z/, /jpe?g\z/]

	field :content, type: String

end