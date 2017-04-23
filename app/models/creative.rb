class Creative
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	field :content, type: String

	has_many :creative_images

end