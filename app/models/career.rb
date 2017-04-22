class Career
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	field :openings, type: Array

end