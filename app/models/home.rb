class Home
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String

	has_many :home_images
end