class MediaPage
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	field :content, type: String

	has_many :media_images

end