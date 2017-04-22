class DigitalMediaImage
	include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

	has_mongoid_attached_file :content_image
	validates_attachment_content_type :content_image, content_type: /\Aimage/
	field :sequence, type: Integer

	belongs_to :digital_media
end