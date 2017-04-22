class DigitalMediaImage
	include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

	field :sequence, type: Integer, default: ->{(DigitalMediaImage.count > 0) ? (DigitalMediaImage.count + 1) : 0 }
	has_mongoid_attached_file :content_image
	validates_attachment_content_type :content_image, content_type: /\Aimage/

	belongs_to :digital_media
end