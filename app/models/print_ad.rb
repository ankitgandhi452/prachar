class PrintAd
	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	field :content, type: String

	has_many :print_ad_images
	

end