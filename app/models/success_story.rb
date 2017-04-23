class SuccessStory
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	has_many :stories
end