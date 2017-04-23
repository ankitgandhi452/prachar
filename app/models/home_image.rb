class HomeImage
	include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

	field :sequence, type: Integer, default: ->{HomeImage.count}
	field :content, type: String
	has_mongoid_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage/

	belongs_to :home
end