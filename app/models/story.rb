class Story
	include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

	field :header, type: String
	field :content, type: String
	field :sequence, type: Integer, default: ->{Story.count}
	has_mongoid_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage/
end