class TvcVideo
	include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

	field :sequence, type: Integer, default: ->{ClientImage.count}
	has_mongoid_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage/
	field :url, type: String
	field :caption, type: String

	belongs_to :tvc
end