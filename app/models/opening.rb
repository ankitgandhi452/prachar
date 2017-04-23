class Opening
	include Mongoid::Document
	include Mongoid::Timestamps

	field :sequence, type: Integer, default: -> {Opening.count}
	field :header, type: String
	field :description, type: String

	belongs_to :career
end