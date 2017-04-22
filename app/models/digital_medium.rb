class DigitalMedium
	include Mongoid::Document
	include Mongoid::Timestamps

	field :header_text, type: String

	has_many :digital_media_images

end