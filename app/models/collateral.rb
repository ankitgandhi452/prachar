class Collateral
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	field :content, type: String

	has_many :collateral_images

end