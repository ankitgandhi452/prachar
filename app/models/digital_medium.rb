class DigitalMedium
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	field :header, type: String

	has_many :digital_media_images

end