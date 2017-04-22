class AboutUs
	include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

	has_mongoid_attached_file :header_image
	validates_attachment_content_type :header_image, content_type: /\Aimage/

	field :title, type: String
	field :content, type: String

end